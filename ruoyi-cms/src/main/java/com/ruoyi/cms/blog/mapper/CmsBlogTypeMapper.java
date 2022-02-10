package com.ruoyi.cms.blog.mapper;

import com.ruoyi.cms.blog.domain.CmsBlogType;

import java.util.List;

/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈blog分类关联 数据层〉
 * @Date: 2022/1/2 23:37
 */
public interface CmsBlogTypeMapper {
    /**
     * 批量新增
     */
    public int batchBlogType(List<CmsBlogType> blogTypeList);
    /**
     * 通过blogID删除blog文件关联
     */
    public int deleteBlogTypeByBlogId(Long blogId);
    /**
     * 批量删除blog文件关联
     */
    public int deleteBlogType(Long[] ids);
    /**
     * 查询博客列表
     */
    public List<CmsBlogType> selectBlogTypeList(Long blogId);
    /**
     * 通过typeId删除blog文件关联
     */
    public int deleteBlogTypeByTypeId(Long typeId);
    /**
     * 通过typeId统计blog数量
     */
    public int countBlogByTypeId(Long typeId);
}
