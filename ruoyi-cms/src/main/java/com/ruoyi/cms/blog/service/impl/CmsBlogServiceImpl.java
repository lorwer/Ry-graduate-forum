package com.ruoyi.cms.blog.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.ruoyi.cms.blog.domain.CmsBlogTag;
import com.ruoyi.cms.blog.domain.CmsBlogType;
import com.ruoyi.cms.blog.mapper.CmsBlogTagMapper;
import com.ruoyi.cms.blog.mapper.CmsBlogTypeMapper;
import com.ruoyi.cms.tag.domain.CmsTag;
import com.ruoyi.cms.tag.mapper.CmsTagMapper;
import com.ruoyi.cms.type.domain.CmsType;
import com.ruoyi.cms.type.mapper.CmsTypeMapper;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.cms.blog.mapper.CmsBlogMapper;
import com.ruoyi.cms.blog.domain.CmsBlog;
import com.ruoyi.cms.blog.service.ICmsBlogService;

/**
 * 文章管理Service业务层处理
 * 
 * @author ning
 * @date 2022-01-01
 */
@Service
public class CmsBlogServiceImpl implements ICmsBlogService 
{
    @Autowired
    private CmsBlogMapper cmsBlogMapper;

    @Autowired
    private CmsBlogTagMapper cmsBlogTagMapper;

    @Autowired
    private CmsTagMapper cmsTagMapper;

    @Autowired
    private CmsBlogTypeMapper cmsBlogTypeMapper;

    @Autowired
    private CmsTypeMapper cmsTypeMapper;

    /**
     * 查询文章管理
     * 
     * @param id 文章管理主键
     * @return 文章管理
     */
    @Override
    public CmsBlog selectCmsBlogById(Long id)
    {
        CmsBlog blog = cmsBlogMapper.selectCmsBlogById(id);
        //查询标签列表
        List<CmsBlogTag> blogTagList = cmsBlogTagMapper.selectBlogTagList(id);
        Long[] tagIds = new Long[blogTagList.size()];
        List<CmsTag> tags = new ArrayList<>();
        List<CmsType> types = new ArrayList<>();
        for (int i = 0; i<blogTagList.size();i++){
            CmsBlogTag cmsBlogTag = blogTagList.get(i);
            Long tagId = cmsBlogTag.getTagId();
            tagIds[i] = tagId;
            CmsTag cmsTag = cmsTagMapper.selectCmsTagByTagId(tagId);
            tags.add(cmsTag);
        }
        blog.setTagIds(tagIds);
        blog.setTags(tags);
        //查询分类列表
        List<CmsBlogType> blogTypeList = cmsBlogTypeMapper.selectBlogTypeList(id);
        Long[] typeIds = new Long[blogTypeList.size()];
        for (int i = 0; i<blogTypeList.size();i++){
            CmsBlogType cmsBlogType = blogTypeList.get(i);
            Long typeId = cmsBlogType.getTypeId();
            typeIds[i] = typeId;
            CmsType cmsType = cmsTypeMapper.selectCmsTypeByTypeId(typeId);
            types.add(cmsType);
        }
        blog.setTypeIds(typeIds);
        blog.setTypes(types);
        return blog;
    }

    /**
     * 查询文章管理列表
     * 
     * @param cmsBlog 文章管理
     * @return 文章管理
     */
    @Override
    public List<CmsBlog> selectCmsBlogList(CmsBlog cmsBlog)
    {
        List<CmsBlog> cmsBlogList = cmsBlogMapper.selectCmsBlogList(cmsBlog);
        List<CmsBlog> blogList = BlogListAddTypeAndTag(cmsBlogList);
        return blogList;
    }

    /**
     * 查询推荐文章列表
     */
    @Override
    public List<CmsBlog> selectCmsBlogListRecommend(CmsBlog cmsBlog) {
        List<CmsBlog> cmsBlogList = cmsBlogMapper.selectCmsBlogListRecommend(cmsBlog);
        List<CmsBlog> blogList = BlogListAddTypeAndTag(cmsBlogList);
        return blogList;
    }

    /**
     * 按分类查询文章列表
     */
    @Override
    public List<CmsBlog> selectCmsBlogListByTypeId(Long id) {
        List<CmsBlog> cmsBlogList = cmsBlogMapper.selectCmsBlogListByTypeId(id);
        List<CmsBlog> blogList = BlogListAddTypeAndTag(cmsBlogList);
        return blogList;
    }

    /**
     * 按标签查询文章列表
     */
    @Override
    public List<CmsBlog> selectCmsBlogListByTagId(Long id) {
        List<CmsBlog> cmsBlogList = cmsBlogMapper.selectCmsBlogListByTagId(id);
        List<CmsBlog> blogList = BlogListAddTypeAndTag(cmsBlogList);
        return blogList;
    }

    /**
     * 新增文章管理
     * 
     * @param cmsBlog 文章管理
     * @return 结果
     */
    @Override
    public Long insertCmsBlog(CmsBlog cmsBlog)
    {
        cmsBlog.setCreateTime(DateUtils.getNowDate());
        cmsBlogMapper.insertCmsBlog(cmsBlog);
        Long blogId = cmsBlog.getId();
        //新增文章标签
        Long[] tagIds = cmsBlog.getTagIds();
        if (tagIds!=null&&tagIds.length>0){
            List<CmsBlogTag> blogTagList = new ArrayList<>();
            for (Long tagId : tagIds) {
                CmsBlogTag cmsBlogTag = new CmsBlogTag();
                cmsBlogTag.setBlogId(blogId);
                cmsBlogTag.setTagId(tagId);
                blogTagList.add(cmsBlogTag);
            }
            cmsBlogTagMapper.batchBlogTag(blogTagList);
        }
        //新增文章分类
        Long[] typeIds = cmsBlog.getTypeIds();
        if (typeIds!=null&&typeIds.length>0){
            List<CmsBlogType> blogTypeList = new ArrayList<>();
            for (Long typeId : typeIds) {
                CmsBlogType cmsBlogType = new CmsBlogType();
                cmsBlogType.setBlogId(blogId);
                cmsBlogType.setTypeId(typeId);
                blogTypeList.add(cmsBlogType);
            }
            cmsBlogTypeMapper.batchBlogType(blogTypeList);
        }
        return blogId;
    }

    /**
     * 修改文章管理
     * 
     * @param cmsBlog 文章管理
     * @return 结果
     */
    @Override
    public int updateCmsBlog(CmsBlog cmsBlog)
    {
        cmsBlog.setUpdateTime(DateUtils.getNowDate());
        Long blogId = cmsBlog.getId();
        //清空文章分类关联
        cmsBlogTypeMapper.deleteBlogTypeByBlogId(blogId);
        //清空文章标签关联
        cmsBlogTagMapper.deleteBlogTagByBlogId(blogId);
        //新增文章标签
        Long[] tagIds = cmsBlog.getTagIds();
        if (tagIds!=null&&tagIds.length>0){
            List<CmsBlogTag> blogTagList = new ArrayList<>();
            for (Long tagId : tagIds) {
                CmsBlogTag cmsBlogTag = new CmsBlogTag();
                cmsBlogTag.setBlogId(blogId);
                cmsBlogTag.setTagId(tagId);
                blogTagList.add(cmsBlogTag);
            }
            cmsBlogTagMapper.batchBlogTag(blogTagList);
        }
        //新增文章分类
        Long[] typeIds = cmsBlog.getTypeIds();
        if (typeIds!=null&&typeIds.length>0){
            List<CmsBlogType> blogTypeList = new ArrayList<>();
            for (Long typeId : typeIds) {
                CmsBlogType cmsBlogType = new CmsBlogType();
                cmsBlogType.setBlogId(blogId);
                cmsBlogType.setTypeId(typeId);
                blogTypeList.add(cmsBlogType);
            }
            cmsBlogTypeMapper.batchBlogType(blogTypeList);
        }
        return cmsBlogMapper.updateCmsBlog(cmsBlog);
    }

    /**
     * 批量删除文章管理
     * 
     * @param ids 需要删除的文章管理主键
     * @return 结果
     */
    @Override
    public int deleteCmsBlogByIds(Long[] ids)
    {
        for (Long id : ids) {
            //清空文章分类关联
            cmsBlogTypeMapper.deleteBlogTypeByBlogId(id);
            //清空文章标签关联
            cmsBlogTagMapper.deleteBlogTagByBlogId(id);
        }
        return cmsBlogMapper.deleteCmsBlogByIds(ids);
    }

    /**
     * 删除文章管理信息
     * 
     * @param id 文章管理主键
     * @return 结果
     */
    @Override
    public int deleteCmsBlogById(Long id)
    {
        //清空文章分类关联
        cmsBlogTypeMapper.deleteBlogTypeByBlogId(id);
        //清空文章标签关联
        cmsBlogTagMapper.deleteBlogTagByBlogId(id);
        return cmsBlogMapper.deleteCmsBlogById(id);
    }

    private List<CmsBlog> BlogListAddTypeAndTag(List<CmsBlog> cmsBlogList){
        if (cmsBlogList==null||cmsBlogList.size()<0){
            return cmsBlogList;
        }
        for (CmsBlog blog : cmsBlogList) {
            Long blogId = blog.getId();
            //查询标签列表
            List<CmsBlogTag> blogTagList = cmsBlogTagMapper.selectBlogTagList(blogId);
            List<CmsTag> cmsTagList = new ArrayList<>();
            blogTagList.forEach((CmsBlogTag cmsBlogTag)->{
                Long tagId = cmsBlogTag.getTagId();
                CmsTag cmsTag = cmsTagMapper.selectCmsTagByTagId(tagId);
                cmsTagList.add(cmsTag);
            });
            blog.setTags(cmsTagList);
            //查询分类列表
            List<CmsBlogType> blogTypeList = cmsBlogTypeMapper.selectBlogTypeList(blogId);
            List<CmsType> cmsTypeList = new ArrayList<>();
            blogTypeList.forEach((CmsBlogType cmsBlogType)->{
                Long typeId = cmsBlogType.getTypeId();
                CmsType cmsType = cmsTypeMapper.selectCmsTypeByTypeId(typeId);
                cmsTypeList.add(cmsType);
            });
            blog.setTypes(cmsTypeList);
        }
        return cmsBlogList;
    }
}
