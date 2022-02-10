package com.ruoyi.cms.type.mapper;

import java.util.List;

import com.ruoyi.cms.tag.domain.CmsTag;
import com.ruoyi.cms.type.domain.CmsType;

/**
 * 分类管理Mapper接口
 * 
 * @author ning
 * @date 2022-01-02
 */
public interface CmsTypeMapper 
{
    /**
     * 查询分类管理
     * 
     * @param typeId 分类管理主键
     * @return 分类管理
     */
    public CmsType selectCmsTypeByTypeId(Long typeId);

    /**
     * 查询分类管理列表
     * 
     * @param cmsType 分类管理
     * @return 分类管理集合
     */
    public List<CmsType> selectCmsTypeList(CmsType cmsType);

    /**
     * 通过typeName查询标签管理列表
     *
     * @param typeName
     * @return 标签管理集合
     */
    public List<CmsType> selectCmsTypeListByTypeName(String typeName);

    /**
     * 新增分类管理
     * 
     * @param cmsType 分类管理
     * @return 结果
     */
    public int insertCmsType(CmsType cmsType);

    /**
     * 修改分类管理
     * 
     * @param cmsType 分类管理
     * @return 结果
     */
    public int updateCmsType(CmsType cmsType);

    /**
     * 删除分类管理
     * 
     * @param typeId 分类管理主键
     * @return 结果
     */
    public int deleteCmsTypeByTypeId(Long typeId);

    /**
     * 批量删除分类管理
     * 
     * @param typeIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCmsTypeByTypeIds(Long[] typeIds);
}
