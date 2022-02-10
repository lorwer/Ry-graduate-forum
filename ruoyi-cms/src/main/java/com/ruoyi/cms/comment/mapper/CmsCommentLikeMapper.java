package com.ruoyi.cms.comment.mapper;

import com.ruoyi.cms.comment.domain.CmsCommentLike;

import java.util.List;

/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈${DESCRIPTION}〉
 * @Date: 2022/1/22 20:08
 */
public interface CmsCommentLikeMapper {
    /**
     * 查询列表
     */
    public List<CmsCommentLike> selectCmsCommentLikeList(CmsCommentLike cmsCommentLike);
    /**
     * 新增
     */
    public int addCmsCommentLike(CmsCommentLike cmsCommentLike);
    /**
     * 删除关联
     */
    public int deleteCmsCommentLike(CmsCommentLike cmsCommentLike);
}
