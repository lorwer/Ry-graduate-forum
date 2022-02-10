import request from '@/utils/request'

// 新增
export function addFileNoticeInfo(data) {
  return request({
    url: '/fileNoticeInfo',
    method: 'post',
    data: data
  })
}

// 删除
export function delFileNoticeInfo(noticeId) {
  return request({
    url: '/fileNoticeInfo/' + noticeId,
    method: 'delete'
  })
}

// 查询文件列表
export function getFileList(noticeId) {
  return request({
    url: '/fileNoticeInfo/' + noticeId,
    method: 'get'
  })
}
