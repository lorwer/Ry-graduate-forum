package com.ruoyi.cms.type.service;

import java.util.List;
import com.ruoyi.cms.type.domain.CmsType;

/**
 * 分类管理Service接口
 * 
 * @author ning
 * @date 2022-01-02
 */
public interface ICmsTypeService 
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
     * 批量删除分类管理
     * 
     * @param typeIds 需要删除的分类管理主键集合
     * @return 结果
     */
    public int deleteCmsTypeByTypeIds(Long[] typeIds);

    /**
     * 删除分类管理信息
     * 
     * @param typeId 分类管理主键
     * @return 结果
     */
    public int deleteCmsTypeByTypeId(Long typeId);

    /**
     * 取消按钮-删除分类图片
     *
     * @param cmsType 分类管理
     * @return 结果
     */
    public int cancel(CmsType cmsType);
}
