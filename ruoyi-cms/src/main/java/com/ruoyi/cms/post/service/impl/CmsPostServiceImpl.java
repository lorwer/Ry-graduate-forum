package com.ruoyi.cms.post.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.ruoyi.cms.post.domain.CmsPostTag;
import com.ruoyi.cms.post.domain.CmsPostType;
import com.ruoyi.cms.post.mapper.CmsPostTagMapper;
import com.ruoyi.cms.post.mapper.CmsPostTypeMapper;
import com.ruoyi.cms.tag.domain.CmsTag;
import com.ruoyi.cms.tag.mapper.CmsTagMapper;
import com.ruoyi.cms.type.domain.CmsType;
import com.ruoyi.cms.type.mapper.CmsTypeMapper;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.cms.post.mapper.CmsPostMapper;
import com.ruoyi.cms.post.domain.CmsPost;
import com.ruoyi.cms.post.service.ICmsPostService;

/**
 * 帖子管理Service业务层处理
 * 
 * @author ning
 * @date 2022-01-01
 */
@Service
public class CmsPostServiceImpl implements ICmsPostService 
{
    @Autowired
    private CmsPostMapper cmsPostMapper;

    @Autowired
    private CmsPostTagMapper cmsPostTagMapper;

    @Autowired
    private CmsTagMapper cmsTagMapper;

    @Autowired
    private CmsPostTypeMapper cmsPostTypeMapper;

    @Autowired
    private CmsTypeMapper cmsTypeMapper;

    /**
     * 查询帖子管理
     * 
     * @param id 帖子管理主键
     * @return 帖子管理
     */
    @Override
    public CmsPost selectCmsPostById(Long id)
    {
        CmsPost post = cmsPostMapper.selectCmsPostById(id);
        //查询标签列表
        List<CmsPostTag> postTagList = cmsPostTagMapper.selectPostTagList(id);
        Long[] tagIds = new Long[postTagList.size()];
        List<CmsTag> tags = new ArrayList<>();
        List<CmsType> types = new ArrayList<>();
        for (int i = 0; i<postTagList.size();i++){
            CmsPostTag cmsPostTag = postTagList.get(i);
            Long tagId = cmsPostTag.getTagId();
            tagIds[i] = tagId;
            CmsTag cmsTag = cmsTagMapper.selectCmsTagByTagId(tagId);
            tags.add(cmsTag);
        }
        post.setTagIds(tagIds);
        post.setTags(tags);
        //查询分类列表
        List<CmsPostType> postTypeList = cmsPostTypeMapper.selectPostTypeList(id);
        Long[] typeIds = new Long[postTypeList.size()];
        for (int i = 0; i<postTypeList.size();i++){
            CmsPostType cmsPostType = postTypeList.get(i);
            Long typeId = cmsPostType.getTypeId();
            typeIds[i] = typeId;
            CmsType cmsType = cmsTypeMapper.selectCmsTypeByTypeId(typeId);
            types.add(cmsType);
        }
        post.setTypeIds(typeIds);
        post.setTypes(types);
        return post;
    }

    /**
     * 查询帖子管理列表
     * 
     * @param cmsPost 帖子管理
     * @return 帖子管理
     */
    @Override
    public List<CmsPost> selectCmsPostList(CmsPost cmsPost)
    {
        List<CmsPost> cmsPostList = cmsPostMapper.selectCmsPostList(cmsPost);
        List<CmsPost> postList = PostListAddTypeAndTag(cmsPostList);
        return postList;
    }

    /**
     * 查询推荐帖子列表
     */
    @Override
    public List<CmsPost> selectCmsPostListRecommend(CmsPost cmsPost) {
        List<CmsPost> cmsPostList = cmsPostMapper.selectCmsPostListRecommend(cmsPost);
        List<CmsPost> postList = PostListAddTypeAndTag(cmsPostList);
        return postList;
    }

    /**
     * 按分类查询帖子列表
     */
    @Override
    public List<CmsPost> selectCmsPostListByTypeId(Long id) {
        List<CmsPost> cmsPostList = cmsPostMapper.selectCmsPostListByTypeId(id);
        List<CmsPost> postList = PostListAddTypeAndTag(cmsPostList);
        return postList;
    }

    /**
     * 按标签查询帖子列表
     */
    @Override
    public List<CmsPost> selectCmsPostListByTagId(Long id) {
        List<CmsPost> cmsPostList = cmsPostMapper.selectCmsPostListByTagId(id);
        List<CmsPost> postList = PostListAddTypeAndTag(cmsPostList);
        return postList;
    }

    /**
     * 新增帖子管理
     * 
     * @param cmsPost 帖子管理
     * @return 结果
     */
    @Override
    public Long insertCmsPost(CmsPost cmsPost)
    {
        cmsPost.setCreateTime(DateUtils.getNowDate());
        cmsPostMapper.insertCmsPost(cmsPost);
        Long postId = cmsPost.getId();
        //新增帖子标签
        Long[] tagIds = cmsPost.getTagIds();
        if (tagIds!=null&&tagIds.length>0){
            List<CmsPostTag> postTagList = new ArrayList<>();
            for (Long tagId : tagIds) {
                CmsPostTag cmsPostTag = new CmsPostTag();
                cmsPostTag.setPostId(postId);
                cmsPostTag.setTagId(tagId);
                postTagList.add(cmsPostTag);
            }
            cmsPostTagMapper.batchPostTag(postTagList);
        }
        //新增帖子分类
        Long[] typeIds = cmsPost.getTypeIds();
        if (typeIds!=null&&typeIds.length>0){
            List<CmsPostType> postTypeList = new ArrayList<>();
            for (Long typeId : typeIds) {
                CmsPostType cmsPostType = new CmsPostType();
                cmsPostType.setPostId(postId);
                cmsPostType.setTypeId(typeId);
                postTypeList.add(cmsPostType);
            }
            cmsPostTypeMapper.batchPostType(postTypeList);
        }
        return postId;
    }

    /**
     * 修改帖子管理
     * 
     * @param cmsPost 帖子管理
     * @return 结果
     */
    @Override
    public int updateCmsPost(CmsPost cmsPost)
    {
        cmsPost.setUpdateTime(DateUtils.getNowDate());
        Long postId = cmsPost.getId();
        //清空帖子分类关联
        cmsPostTypeMapper.deletePostTypeByPostId(postId);
        //清空帖子标签关联
        cmsPostTagMapper.deletePostTagByPostId(postId);
        //新增帖子标签
        Long[] tagIds = cmsPost.getTagIds();
        if (tagIds!=null&&tagIds.length>0){
            List<CmsPostTag> postTagList = new ArrayList<>();
            for (Long tagId : tagIds) {
                CmsPostTag cmsPostTag = new CmsPostTag();
                cmsPostTag.setPostId(postId);
                cmsPostTag.setTagId(tagId);
                postTagList.add(cmsPostTag);
            }
            cmsPostTagMapper.batchPostTag(postTagList);
        }
        //新增帖子分类
        Long[] typeIds = cmsPost.getTypeIds();
        if (typeIds!=null&&typeIds.length>0){
            List<CmsPostType> postTypeList = new ArrayList<>();
            for (Long typeId : typeIds) {
                CmsPostType cmsPostType = new CmsPostType();
                cmsPostType.setPostId(postId);
                cmsPostType.setTypeId(typeId);
                postTypeList.add(cmsPostType);
            }
            cmsPostTypeMapper.batchPostType(postTypeList);
        }
        return cmsPostMapper.updateCmsPost(cmsPost);
    }

    /**
     * 批量删除帖子管理
     * 
     * @param ids 需要删除的帖子管理主键
     * @return 结果
     */
    @Override
    public int deleteCmsPostByIds(Long[] ids)
    {
        for (Long id : ids) {
            //清空帖子分类关联
            cmsPostTypeMapper.deletePostTypeByPostId(id);
            //清空帖子标签关联
            cmsPostTagMapper.deletePostTagByPostId(id);
        }
        return cmsPostMapper.deleteCmsPostByIds(ids);
    }

    /**
     * 删除帖子管理信息
     * 
     * @param id 帖子管理主键
     * @return 结果
     */
    @Override
    public int deleteCmsPostById(Long id)
    {
        //清空帖子分类关联
        cmsPostTypeMapper.deletePostTypeByPostId(id);
        //清空帖子标签关联
        cmsPostTagMapper.deletePostTagByPostId(id);
        return cmsPostMapper.deleteCmsPostById(id);
    }

    private List<CmsPost> PostListAddTypeAndTag(List<CmsPost> cmsPostList){
        if (cmsPostList==null||cmsPostList.size()<0){
            return cmsPostList;
        }
        for (CmsPost post : cmsPostList) {
            Long postId = post.getId();
            //查询标签列表
            List<CmsPostTag> postTagList = cmsPostTagMapper.selectPostTagList(postId);
            List<CmsTag> cmsTagList = new ArrayList<>();
            postTagList.forEach((CmsPostTag cmsPostTag)->{
                Long tagId = cmsPostTag.getTagId();
                CmsTag cmsTag = cmsTagMapper.selectCmsTagByTagId(tagId);
                cmsTagList.add(cmsTag);
            });
            post.setTags(cmsTagList);
            //查询分类列表
            List<CmsPostType> postTypeList = cmsPostTypeMapper.selectPostTypeList(postId);
            List<CmsType> cmsTypeList = new ArrayList<>();
            postTypeList.forEach((CmsPostType cmsPostType)->{
                Long typeId = cmsPostType.getTypeId();
                CmsType cmsType = cmsTypeMapper.selectCmsTypeByTypeId(typeId);
                cmsTypeList.add(cmsType);
            });
            post.setTypes(cmsTypeList);
        }
        return cmsPostList;
    }
}
