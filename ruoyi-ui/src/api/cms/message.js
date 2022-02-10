import request from '@/utils/request'

// 首页查询留言列表
export function cmsListMessage(query) {
  return request({
    url: '/cms/message/cms/list',
    headers: {
      isToken: false
    },
    method: 'get',
    params: query,
    timeout: 40000
  })
}

// 首页新增留言
export function cmsAddMessage(data) {
  return request({
    url: '/cms/message/cms/addMessage',
    method: 'post',
    data: data,
    headers: {
      isToken: false
    },
    timeout: 40000
  })
}

// 首页新增点赞
export function addCmsMessageLike(data) {
  return request({
    url: '/cms/message/cms/addCmsMessageLike',
    method: 'post',
    data: data,
    headers: {
      isToken: false
    },
    timeout: 40000
  })
}

// 首页删除点赞
export function delCmsMessageLike(data) {
  return request({
    url: '/cms/message/cms/delCmsMessageLike',
    method: 'post',
    data: data,
    headers: {
      isToken: false
    },
    timeout: 40000
  })
}

// 查询留言管理列表
export function listMessage(query) {
  return request({
    url: '/cms/message/list',
    method: 'get',
    params: query
  })
}

// 查询留言管理详细
export function getMessage(id) {
  return request({
    url: '/cms/message/' + id,
    method: 'get'
  })
}

// 新增留言管理
export function addMessage(data) {
  return request({
    url: '/cms/message',
    method: 'post',
    data: data
  })
}

// 修改留言管理
export function updateMessage(data) {
  return request({
    url: '/cms/message',
    method: 'put',
    data: data
  })
}

// 删除留言管理
export function delMessage(id) {
  return request({
    url: '/cms/message/' + id,
    method: 'delete'
  })
}
