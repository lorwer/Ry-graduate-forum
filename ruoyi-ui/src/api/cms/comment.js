import request from '@/utils/request'

// 首页查询评论列表
export function cmsListComment(query) {
  return request({
    url: '/cms/comment/cms/list',
    headers: {
      isToken: false
    },
    method: 'get',
    params: query,
    timeout: 40000
  })
}

// 首页新增评论
export function cmsAddComment(data) {
  return request({
    url: '/cms/comment/cms/addComment',
    method: 'post',
    data: data,
    headers: {
      isToken: false
    },
    timeout: 40000
  })
}

// 首页新增点赞
export function addCmsCommentLike(data) {
  return request({
    url: '/cms/comment/cms/addCmsCommentLike',
    method: 'post',
    data: data,
    headers: {
      isToken: false
    },
    timeout: 40000
  })
}

// 首页删除点赞
export function delCmsCommentLike(data) {
  return request({
    url: '/cms/comment/cms/delCmsCommentLike',
    method: 'post',
    data: data,
    headers: {
      isToken: false
    },
    timeout: 40000
  })
}

// 查询评论管理列表
export function listComment(query) {
  return request({
    url: '/cms/comment/list',
    method: 'get',
    params: query
  })
}

// 查询评论管理详细
export function getComment(id) {
  return request({
    url: '/cms/comment/' + id,
    method: 'get'
  })
}

// 新增评论管理
export function addComment(data) {
  return request({
    url: '/cms/comment',
    method: 'post',
    data: data
  })
}

// 修改评论管理
export function updateComment(data) {
  return request({
    url: '/cms/comment',
    method: 'put',
    data: data
  })
}

// 删除评论管理
export function delComment(id) {
  return request({
    url: '/cms/comment/' + id,
    method: 'delete'
  })
}
