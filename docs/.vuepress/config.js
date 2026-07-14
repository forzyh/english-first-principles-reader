import { readFileSync } from 'node:fs'
import { viteBundler } from '@vuepress/bundler-vite'
import { slimsearchPlugin } from '@vuepress/plugin-slimsearch'
import { defaultTheme } from '@vuepress/theme-default'
import { defineUserConfig } from 'vuepress'

const manifest = JSON.parse(
  readFileSync(new URL('./book-manifest.json', import.meta.url), 'utf8'),
)
const base = process.env.BASE_PATH || '/'

const asLink = ({ title, path }) => ({ text: title, link: path })
const byTitle = (pattern) => manifest.find((entry) => pattern.test(entry.title))
const chapters = (from, to) =>
  manifest
    .filter((entry) => {
      const match = entry.title.match(/^第(\d+)章/)
      return match && Number(match[1]) >= from && Number(match[1]) <= to
    })
    .map((entry) => `/book/${entry.file}`)

const sidebar = [
  {
    text: '开始阅读',
    collapsible: true,
    children: manifest.slice(0, 4).map(asLink),
  },
  {
    text: '第一部分　从意义到结构',
    link: byTitle(/^第一部分/).path,
    collapsible: true,
    children: chapters(1, 4),
  },
  {
    text: '第二部分　构建句法树',
    link: byTitle(/^第二部分/).path,
    collapsible: true,
    children: chapters(5, 11),
  },
  {
    text: '第三部分　给事件添加元数据',
    link: byTitle(/^第三部分/).path,
    collapsible: true,
    children: chapters(12, 17),
  },
  {
    text: '第四部分　从句子树到篇章图',
    link: byTitle(/^第四部分/).path,
    collapsible: true,
    children: chapters(18, 22),
  },
  {
    text: '第五部分　把模型变成能力',
    link: byTitle(/^第五部分/).path,
    collapsible: true,
    children: chapters(23, 26),
  },
  {
    text: '附录与结语',
    collapsible: true,
    children: manifest.filter((entry) => /^(附录|结语)/.test(entry.title)).map(asLink),
  },
]

export default defineUserConfig({
  base,
  lang: 'zh-CN',
  title: '英语第一性原理',
  description: '从第一性原理理解英语：在线分章阅读版',
  head: [
    ['link', { rel: 'icon', type: 'image/svg+xml', href: `${base}book-mark.svg` }],
    ['meta', { name: 'theme-color', content: '#174f9c' }],
    ['meta', { name: 'color-scheme', content: 'light dark' }],
  ],
  bundler: viteBundler(),
  theme: defaultTheme({
    logo: '/book-mark.svg',
    repo: false,
    themePlugins: {
      prismjs: {
        lineNumbers: 'disable',
      },
    },
    navbar: [
      { text: '首页', link: '/' },
      { text: '开始阅读', link: '/book/00-preface.html' },
      { text: '学习地图', link: '/book/01-learning-map.html' },
      { text: '语法树', link: '/book/02-overview.html' },
    ],
    sidebar: {
      '/book/': sidebar,
    },
    sidebarDepth: 2,
    contributors: false,
    editLink: false,
    lastUpdated: false,
    notFound: ['这里没有这一页', '章节似乎走丢了'],
    backToHome: '返回首页',
    toggleColorMode: '切换颜色模式',
    toggleSidebar: '切换章节目录',
  }),
  plugins: [
    slimsearchPlugin({
      indexContent: true,
      suggestion: true,
      locales: {
        '/': {
          placeholder: '搜索本书',
        },
      },
    }),
  ],
})
