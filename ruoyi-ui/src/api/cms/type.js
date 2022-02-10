import request from '@/utils/request'

// 查询分类管理列表
export function listType(query) {
  return request({
    url: '/cms/type/list',
    method: 'get',
    params: query
  })
}

// 查询分类管理详细
export function getType(typeId) {
  return request({
    url: '/cms/type/' + typeId,
    method: 'get'
  })
}

// 新增分类管理
export function addType(data) {
  return request({
    url: '/cms/type',
    method: 'post',
    data: data
  })
}

// 修改分类管理
export function updateType(data) {
  return request({
    url: '/cms/type',
    method: 'put',
    data: data
  })
}

// 删除分类管理
export function delType(typeId) {
  return request({
    url: '/cms/type/' + typeId,
    method: 'delete'
  })
}

// 取消按钮-删除分类图片
export function cancelType(data) {
  return request({
    url: '/cms/type/cancel',
    method: 'post',
    data: data
  })
}
