package com.ruoyi.cms.post.service;

import com.ruoyi.cms.post.domain.CmsPostTag;

import java.util.List;

/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈${DESCRIPTION}〉
 * @Date: 2022/1/2 23:22
 */
public interface ICmsPostTagService {
    /**
     * 批量新增
     */
    public int batchPostTag(List<CmsPostTag> postTagList);
    /**
     * 通过postID删除post标签关联
     */
    public int deletePostTagByPostId(Long postId);
    /**
     * 批量删除post标签关联
     */
    public int deletePostTag(Long[] ids);
    /**
     * 查询标签列表
     */
    public List<CmsPostTag> selectPostTagList(Long postId);
}
