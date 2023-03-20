import request from '@/utils/request'
import { praseStrEmpty } from "@/utils/ruoyi";

// 首页查询帖子列表
export function cmsListPost(query) {
  return request({
    url: '/cms/post/cms/cmsList',
    headers: {
      isToken: false
    },
    method: 'get',
    params: query,
    timeout: 40000
  })
}

// 首页查询帖子详细
export function getPostDetail(id) {
  return request({
    url: '/cms/post/cms/detail/' + praseStrEmpty(id),
    headers: {
      isToken: false
    },
    method: 'get',
    timeout: 40000
  })
}

// 首页按分类查询帖子列表
export function cmsListByTypeId(id) {
  return request({
    url: '/cms/post/cms/cmsListByType/' + id,
    headers: {
      isToken: false
    },
    method: 'get',
    timeout: 40000
  })
}

// 首页按标签查询帖子列表
export function cmsListByTagId(id) {
  return request({
    url: '/cms/post/cms/cmsListByTag/' + id,
    headers: {
      isToken: false
    },
    method: 'get',
    timeout: 40000
  })
}

// 首页查询推荐帖子列表
export function cmsListRecommend(query) {
  return request({
    url: '/cms/post/cms/cmsListRecommend',
    headers: {
      isToken: false
    },
    method: 'get',
    params: query,
    timeout: 40000
  })
}

// 首页增加阅读量
export function addPostViews(id) {
  return request({
    url: '/cms/post/cms/addPostViews/' + id,
    headers: {
      isToken: false
    },
    method: 'get',
    timeout: 40000
  })
}

// 随笔页查询帖子列表
export function cmsEssayList(query) {
  return request({
    url: '/cms/post/cms/cmsEssayList',
    headers: {
      isToken: false
    },
    method: 'get',
    params: query,
    timeout: 40000
  })
}

// 查询帖子管理列表
export function listPost(query) {
  return request({
    url: '/cms/post/list',
    method: 'get',
    params: query
  })
}

// 查询帖子管理详细
export function getPost(id) {
  return request({
    url: '/cms/post/' + praseStrEmpty(id),
    method: 'get'
  })
}

// 新增帖子管理
export function addPost(data) {
  return request({
    url: '/cms/post',
    method: 'post',
    data: data
  })
}

// 修改帖子管理
export function updatePost(data) {
  return request({
    url: '/cms/post',
    method: 'put',
    data: data
  })
}

// 删除帖子管理
export function delPost(id) {
  return request({
    url: '/cms/post/' + id,
    method: 'delete'
  })
}

// 取消按钮-删除首图
export function cancelPost(data) {
  return request({
    url: '/cms/post/cancel',
    method: 'post',
    data: data
  })
}
