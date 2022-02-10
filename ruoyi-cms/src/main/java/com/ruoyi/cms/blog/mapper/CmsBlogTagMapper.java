package com.ruoyi.cms.blog.mapper;

import com.ruoyi.cms.blog.domain.CmsBlogTag;

import java.util.List;

/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈blog标签关联 数据层〉
 * @Date: 2022/1/2 23:12
 */
public interface CmsBlogTagMapper {
    /**
     * 批量新增
     */
    public int batchBlogTag(List<CmsBlogTag> blogTagList);
    /**
     * 通过blogID删除blog文件关联
     */
    public int deleteBlogTagByBlogId(Long blogId);
    /**
     * 批量删除blog文件关联
     */
    public int deleteBlogTag(Long[] ids);
    /**
     * 查询文件列表
     */
    public List<CmsBlogTag> selectBlogTagList(Long blogId);
    /**
     * 通过tagId删除blog文件关联
     */
    public int deleteBlogTagByTagId(Long tagId);
    /**
     * 通过tagId统计blog数量
     */
    public int countBlogByTagId(Long tagId);
}
