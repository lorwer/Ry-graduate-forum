import request from '@/utils/request'

// 新增
export function addFilePostInfo(data) {
  return request({
    url: '/filePostInfo',
    method: 'post',
    data: data
  })
}

// 删除
export function delFilePostInfo(postId) {
  return request({
    url: '/filePostInfo/' + postId,
    method: 'delete'
  })
}

// 查询文件列表
export function getFileList(postId) {
  return request({
    url: '/filePostInfo/' + postId,
    method: 'get'
  })
}
