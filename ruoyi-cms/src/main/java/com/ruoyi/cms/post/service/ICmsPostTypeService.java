package com.ruoyi.cms.post.service;

import com.ruoyi.cms.post.domain.CmsPostType;

import java.util.List;

/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈${DESCRIPTION}〉
 * @Date: 2022/1/2 23:42
 */
public interface ICmsPostTypeService {
    /**
     * 批量新增
     */
    public int batchPostType(List<CmsPostType> postTypeList);
    /**
     * 通过postID删除post分类关联
     */
    public int deletePostTypeByPostId(Long postId);
    /**
     * 批量删除post分类关联
     */
    public int deletePostType(Long[] ids);
    /**
     * 查询分类列表
     */
    public List<CmsPostType> selectPostTypeList(Long postId);
}
