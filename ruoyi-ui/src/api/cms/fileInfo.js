import request from '@/utils/request'

// 查询文件管理列表
export function listFileInfo(query) {
  return request({
    url: '/fileInfo/list',
    method: 'get',
    params: query
  })
}

// 查询文件管理详细
export function getFileInfo(fileId) {
  return request({
    url: '/fileInfo/' + fileId,
    method: 'get'
  })
}

// 新增文件管理
export function addFileInfo(data) {
  return request({
    url: '/fileInfo',
    method: 'post',
    data: data
  })
}

// 修改文件管理
export function updateFileInfo(data) {
  return request({
    url: '/fileInfo',
    method: 'put',
    data: data
  })
}

// 删除文件管理
export function delFileInfo(fileId) {
  return request({
    url: '/fileInfo/' + fileId,
    method: 'delete'
  })
}
