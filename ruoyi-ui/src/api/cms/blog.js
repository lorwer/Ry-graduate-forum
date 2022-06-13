import request from '@/utils/request'
import { praseStrEmpty } from "@/utils/ruoyi";

// 首页查询文章列表
export function cmsListBlog(query) {
  return request({
    url: '/cms/blog/cms/cmsList',
    headers: {
      isToken: false
    },
    method: 'get',
    params: query,
    timeout: 40000
  })
}

// 首页查询文章详细
export function getBlogDetail(id) {
  return request({
    url: '/cms/blog/cms/detail/' + praseStrEmpty(id),
    headers: {
      isToken: false
    },
    method: 'get',
    timeout: 40000
  })
}

// 首页按分类查询文章列表
export function cmsListByTypeId(id) {
  return request({
    url: '/cms/blog/cms/cmsListByType/' + id,
    headers: {
      isToken: false
    },
    method: 'get',
    timeout: 40000
  })
}

// 首页按标签查询文章列表
export function cmsListByTagId(id) {
  return request({
    url: '/cms/blog/cms/cmsListByTag/' + id,
    headers: {
      isToken: false
    },
    method: 'get',
    timeout: 40000
  })
}

// 首页查询推荐文章列表
export function cmsListRecommend(query) {
  return request({
    url: '/cms/blog/cms/cmsListRecommend',
    headers: {
      isToken: false
    },
    method: 'get',
    params: query,
    timeout: 40000
  })
}

// 首页增加阅读量
export function addBlogViews(id) {
  return request({
    url: '/cms/blog/cms/addBlogViews/' + id,
    headers: {
      isToken: false
    },
    method: 'get',
    timeout: 40000
  })
}

// 随笔页查询文章列表
export function cmsEssayList(query) {
  return request({
    url: '/cms/blog/cms/cmsEssayList',
    headers: {
      isToken: false
    },
    method: 'get',
    params: query,
    timeout: 40000
  })
}

// 查询文章管理列表
export function listBlog(query) {
  return request({
    url: '/cms/blog/list',
    method: 'get',
    params: query
  })
}

// 查询文章管理详细
export function getBlog(id) {
  return request({
    url: '/cms/blog/' + praseStrEmpty(id),
    method: 'get'
  })
}

// 新增文章管理
export function addBlog(data) {
  return request({
    url: '/cms/blog',
    method: 'post',
    data: data
  })
}

// 修改文章管理
export function updateBlog(data) {
  return request({
    url: '/cms/blog',
    method: 'put',
    data: data
  })
}

// 删除文章管理
export function delBlog(id) {
  return request({
    url: '/cms/blog/' + id,
    method: 'delete'
  })
}

// 取消按钮-删除首图
export function cancelBlog(data) {
  return request({
    url: '/cms/blog/cancel',
    method: 'post',
    data: data
  })
}
