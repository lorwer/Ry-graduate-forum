import request from '@/utils/request'

// 新增
export function addFileBlogInfo(data) {
  return request({
    url: '/fileBlogInfo',
    method: 'post',
    data: data
  })
}

// 删除
export function delFileBlogInfo(blogId) {
  return request({
    url: '/fileBlogInfo/' + blogId,
    method: 'delete'
  })
}

// 查询文件列表
export function getFileList(blogId) {
  return request({
    url: '/fileBlogInfo/' + blogId,
    method: 'get'
  })
}
