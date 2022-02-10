package com.ruoyi.cms.blog.service;

import com.ruoyi.cms.blog.domain.CmsBlogTag;

import java.util.List;

/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈${DESCRIPTION}〉
 * @Date: 2022/1/2 23:22
 */
public interface ICmsBlogTagService {
    /**
     * 批量新增
     */
    public int batchBlogTag(List<CmsBlogTag> blogTagList);
    /**
     * 通过blogID删除blog标签关联
     */
    public int deleteBlogTagByBlogId(Long blogId);
    /**
     * 批量删除blog标签关联
     */
    public int deleteBlogTag(Long[] ids);
    /**
     * 查询标签列表
     */
    public List<CmsBlogTag> selectBlogTagList(Long blogId);
}
