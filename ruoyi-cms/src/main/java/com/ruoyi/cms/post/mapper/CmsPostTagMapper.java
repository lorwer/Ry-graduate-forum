package com.ruoyi.cms.post.mapper;

import com.ruoyi.cms.post.domain.CmsPostTag;

import java.util.List;

/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈post标签关联 数据层〉
 * @Date: 2022/1/2 23:12
 */
public interface CmsPostTagMapper {
    /**
     * 批量新增
     */
    public int batchPostTag(List<CmsPostTag> postTagList);
    /**
     * 通过postID删除post文件关联
     */
    public int deletePostTagByPostId(Long postId);
    /**
     * 批量删除post文件关联
     */
    public int deletePostTag(Long[] ids);
    /**
     * 查询文件列表
     */
    public List<CmsPostTag> selectPostTagList(Long postId);
    /**
     * 通过tagId删除post文件关联
     */
    public int deletePostTagByTagId(Long tagId);
    /**
     * 通过tagId统计post数量
     */
    public int countPostByTagId(Long tagId);
}
