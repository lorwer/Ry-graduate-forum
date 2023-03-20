package com.ruoyi.cms.post.service;

import java.util.List;
import com.ruoyi.cms.post.domain.CmsPost;

/**
 * 帖子管理Service接口
 * 
 * @author ning
 * @date 2022-01-01
 */
public interface ICmsPostService 
{
    /**
     * 查询帖子管理
     * 
     * @param id 帖子管理主键
     * @return 帖子管理
     */
    public CmsPost selectCmsPostById(Long id);

    /**
     * 查询帖子管理列表
     * 
     * @param cmsPost 帖子管理
     * @return 帖子管理集合
     */
    public List<CmsPost> selectCmsPostList(CmsPost cmsPost);

    /**
     * 查询推荐帖子列表
     */
    public List<CmsPost> selectCmsPostListRecommend(CmsPost cmsPost);

    /**
     * 按分类查询帖子列表
     */
    public List<CmsPost> selectCmsPostListByTypeId(Long id);

    /**
     * 按标签查询帖子列表
     */
    public List<CmsPost> selectCmsPostListByTagId(Long id);

    /**
     * 新增帖子管理
     * 
     * @param cmsPost 帖子管理
     * @return 结果
     */
    public Long insertCmsPost(CmsPost cmsPost);

    /**
     * 修改帖子管理
     * 
     * @param cmsPost 帖子管理
     * @return 结果
     */
    public int updateCmsPost(CmsPost cmsPost);

    /**
     * 批量删除帖子管理
     * 
     * @param ids 需要删除的帖子管理主键集合
     * @return 结果
     */
    public int deleteCmsPostByIds(Long[] ids);

    /**
     * 删除帖子管理信息
     * 
     * @param id 帖子管理主键
     * @return 结果
     */
    public int deleteCmsPostById(Long id);
}
