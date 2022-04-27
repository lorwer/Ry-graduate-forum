import request from '@/utils/request'
import { praseStrEmpty } from "@/utils/ruoyi";

// 查询总阅读量/文章总数/评论总数/留言总数
export function total() {
  return request({
    url: '/cms/chart/total',
    method: 'get',
  })
}

// 查询平滑折线图数据
export function lineChart() {
  return request({
    url: '/cms/chart/lineChart',
    method: 'get',
  })
}

// 查询分类饼图数据
export function pieChart() {
  return request({
    url: '/cms/chart/pieChart',
    method: 'get',
  })
}

// 查询标签球数据
export function tagChart() {
  return request({
    url: '/cms/chart/tagChart',
    method: 'get',
  })
}

// 查询柱状图数据
export function essayChart() {
  return request({
    url: '/cms/chart/essayChart',
    method: 'get',
  })
}
