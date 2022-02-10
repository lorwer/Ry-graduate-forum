package com.ruoyi.cms.blog.service;

import com.ruoyi.cms.blog.domain.CmsBlogType;

import java.util.List;

/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈${DESCRIPTION}〉
 * @Date: 2022/1/2 23:42
 */
public interface ICmsBlogTypeService {
    /**
     * 批量新增
     */
    public int batchBlogType(List<CmsBlogType> blogTypeList);
    /**
     * 通过blogID删除blog分类关联
     */
    public int deleteBlogTypeByBlogId(Long blogId);
    /**
     * 批量删除blog分类关联
     */
    public int deleteBlogType(Long[] ids);
    /**
     * 查询分类列表
     */
    public List<CmsBlogType> selectBlogTypeList(Long blogId);
}
