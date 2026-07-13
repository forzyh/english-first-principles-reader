#!/usr/bin/env ruby

require "fileutils"
require "json"
require "rexml/document"

SOURCE_DIR = File.expand_path("../tmp/docx-xml", __dir__)
BOOK_DIR = File.expand_path("../docs/book", __dir__)
IMAGE_DIR = File.expand_path("../docs/.vuepress/public/images/book", __dir__)
MANIFEST_PATH = File.expand_path("../docs/.vuepress/book-manifest.json", __dir__)

NS = {
  "w" => "http://schemas.openxmlformats.org/wordprocessingml/2006/main",
  "r" => "http://schemas.openxmlformats.org/officeDocument/2006/relationships",
  "a" => "http://schemas.openxmlformats.org/drawingml/2006/main"
}.freeze

def element(node, path)
  REXML::XPath.first(node, path, NS)
end

def elements(node, path)
  REXML::XPath.match(node, path, NS)
end

def attr(node, path, name)
  element(node, path)&.attributes&.[](name)
end

def inline_text(node)
  output = +""
  elements(node, ".//w:r | .//w:hyperlink").each do |item|
    next if item.name == "hyperlink"

    text = +""
    item.children.each do |child|
      next unless child.is_a?(REXML::Element)
      text << child.text.to_s if child.name == "t"
      text << "\n" if child.name == "br"
      text << "\t" if child.name == "tab"
    end
    next if text.empty?

    bold = element(item, "w:rPr/w:b")
    italic = element(item, "w:rPr/w:i")
    text = "**#{text}**" if bold
    text = "*#{text}*" if italic
    output << text
  end
  output.gsub("\u00A0", " ").strip
end

def plain_text(node)
  elements(node, ".//w:t").map { |item| item.text.to_s }.join.gsub("\u00A0", " ").strip
end

def safe_cell(text)
  text.gsub("|", "\\|").gsub("\n", "<br>")
end

def filename_for(title, index)
  case title
  when "英语第一性原理" then "cover.md"
  when /^写在前面/ then "00-preface.md"
  when /^目录与学习地图/ then "01-learning-map.md"
  when /^总览/ then "02-overview.md"
  when /^第([一二三四五])部分/ then "part-#{%w[一 二 三 四 五].index(Regexp.last_match(1)) + 1}.md"
  when /^第(\d+)章/ then format("chapter-%02d.md", Regexp.last_match(1).to_i)
  when /^附录([A-E])/ then "appendix-#{Regexp.last_match(1).downcase}.md"
  when /^结语/ then "conclusion.md"
  else format("section-%02d.md", index)
  end
end

rels_doc = REXML::Document.new(File.read(File.join(SOURCE_DIR, "word/_rels/document.xml.rels")))
relationships = {}
REXML::XPath.each(rels_doc, "//*[local-name()='Relationship']") do |rel|
  relationships[rel.attributes["Id"]] = rel.attributes["Target"]
end

FileUtils.rm_rf(BOOK_DIR)
FileUtils.rm_rf(IMAGE_DIR)
FileUtils.mkdir_p(BOOK_DIR)
FileUtils.mkdir_p(IMAGE_DIR)

document = REXML::Document.new(File.read(File.join(SOURCE_DIR, "word/document.xml")))
body = element(document, "//w:body")

sections = []
current = nil
pending_images = []
image_index = 0

flush_pending_images = lambda do
  next [] if pending_images.empty?
  lines = pending_images.flat_map { |image| ["![#{image[:alt]}](#{image[:path]})", ""] }
  pending_images.clear
  lines
end

body.children.each do |node|
  next unless node.is_a?(REXML::Element)

  if node.name == "p"
    style = attr(node, "w:pPr/w:pStyle", "w:val") || ""
    text = inline_text(node)

    blips = elements(node, ".//a:blip")
    blips.each do |blip|
      rel_id = blip.attributes["r:embed"]
      target = relationships[rel_id]
      next unless target

      source = File.join(SOURCE_DIR, "word", target)
      extension = File.extname(target)
      image_index += 1
      output_name = format("figure-%02d%s", image_index, extension)
      FileUtils.cp(source, File.join(IMAGE_DIR, output_name))
      pending_images << { path: "/images/book/#{output_name}", alt: "教材插图 #{image_index}" }
    end

    next if text.empty? && blips.empty?

    if style == "Heading1"
      title = plain_text(node)
      current = { title: title, lines: [], order: sections.length }
      sections << current
      next
    end

    unless current
      current = { title: "英语第一性原理", lines: [], order: sections.length }
      sections << current
    end

    if style == "ImageCaption"
      pending_images.each { |image| image[:alt] = text.sub(/^图\s*\S+\s*/, "") }
      current[:lines].concat(flush_pending_images.call)
      current[:lines] << "*#{text}*" << ""
      next
    end

    current[:lines].concat(flush_pending_images.call) unless pending_images.empty?

    is_list_item = style == "Compact" && element(node, "w:pPr/w:numPr")
    if !is_list_item && current[:lines].last&.start_with?("- ")
      current[:lines] << ""
    end

    case style
    when "Heading2"
      current[:lines] << "## #{text}" << ""
    when "Heading3"
      current[:lines] << "### #{text}" << ""
    when "Heading4"
      current[:lines] << "#### #{text}" << ""
    when "SourceCode"
      current[:lines] << "```text" << text << "```" << ""
    when "BlockText", "PartIntro"
      text.split("\n").each { |line| current[:lines] << "> #{line}" }
      current[:lines] << ""
    when "Compact"
      if is_list_item
        current[:lines] << "- #{text}"
      else
        current[:lines] << text << ""
      end
    else
      current[:lines] << text << ""
    end
  elsif node.name == "tbl"
    next unless current

    current[:lines].concat(flush_pending_images.call) unless pending_images.empty?
    rows = elements(node, "w:tr").map do |row|
      elements(row, "w:tc").map { |cell| safe_cell(plain_text(cell)) }
    end
    next if rows.empty?

    width = rows.map(&:length).max
    rows.each { |row| row.fill("", row.length...width) }
    current[:lines] << "| #{rows.first.join(' | ')} |"
    current[:lines] << "| #{Array.new(width, '---').join(' | ')} |"
    rows.drop(1).each { |row| current[:lines] << "| #{row.join(' | ')} |" }
    current[:lines] << ""
  end
end

current[:lines].concat(flush_pending_images.call) if current && !pending_images.empty?

manifest = sections.each_with_index.map do |section, index|
  filename = filename_for(section[:title], index)
  path = File.join(BOOK_DIR, filename)
  content = ["---", "title: #{section[:title].to_json}", "---", "", "# #{section[:title]}", "", *section[:lines]]
  File.write(path, content.join("\n").gsub(/\n{4,}/, "\n\n\n").rstrip + "\n")
  {
    "title" => section[:title],
    "path" => "/book/#{filename.delete_suffix('.md')}.html",
    "file" => filename
  }
end

FileUtils.mkdir_p(File.dirname(MANIFEST_PATH))
File.write(MANIFEST_PATH, JSON.pretty_generate(manifest) + "\n")
puts "Extracted #{manifest.length} sections and #{image_index} images."
