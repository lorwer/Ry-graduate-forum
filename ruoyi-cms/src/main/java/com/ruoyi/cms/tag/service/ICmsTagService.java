package com.ruoyi.cms.tag.service;

import java.util.List;
import com.ruoyi.cms.tag.domain.CmsTag;

/**
 * 标签管理Service接口
 * 
 * @author ning
 * @date 2022-01-02
 */
public interface ICmsTagService 
{
    /**
     * 查询标签管理
     * 
     * @param tagId 标签管理主键
     * @return 标签管理
     */
    public CmsTag selectCmsTagByTagId(Long tagId);

    /**
     * 查询标签管理列表
     * 
     * @param cmsTag 标签管理
     * @return 标签管理集合
     */
    public List<CmsTag> selectCmsTagList(CmsTag cmsTag);

    /**
     * 新增标签管理
     * 
     * @param cmsTag 标签管理
     * @return 结果
     */
    public int insertCmsTag(CmsTag cmsTag);

    /**
     * 修改标签管理
     * 
     * @param cmsTag 标签管理
     * @return 结果
     */
    public int updateCmsTag(CmsTag cmsTag);

    /**
     * 批量删除标签管理
     * 
     * @param tagIds 需要删除的标签管理主键集合
     * @return 结果
     */
    public int deleteCmsTagByTagIds(Long[] tagIds);

    /**
     * 删除标签管理信息
     * 
     * @param tagId 标签管理主键
     * @return 结果
     */
    public int deleteCmsTagByTagId(Long tagId);
}
