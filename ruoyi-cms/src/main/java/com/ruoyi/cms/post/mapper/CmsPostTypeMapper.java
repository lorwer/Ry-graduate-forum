package com.ruoyi.cms.post.mapper;

import com.ruoyi.cms.post.domain.CmsPostType;

import java.util.List;

/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈post分类关联 数据层〉
 * @Date: 2022/1/2 23:37
 */
public interface CmsPostTypeMapper {
    /**
     * 批量新增
     */
    public int batchPostType(List<CmsPostType> postTypeList);
    /**
     * 通过postID删除post文件关联
     */
    public int deletePostTypeByPostId(Long postId);
    /**
     * 批量删除post文件关联
     */
    public int deletePostType(Long[] ids);
    /**
     * 查询帖子列表
     */
    public List<CmsPostType> selectPostTypeList(Long postId);
    /**
     * 通过typeId删除post文件关联
     */
    public int deletePostTypeByTypeId(Long typeId);
    /**
     * 通过typeId统计post数量
     */
    public int countPostByTypeId(Long typeId);
}
