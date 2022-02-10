package com.ruoyi.cms.type.service.impl;

import java.util.List;

import com.ruoyi.cms.blog.mapper.CmsBlogTypeMapper;
import com.ruoyi.cms.fileInfo.service.ISysFileInfoService;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.cms.type.mapper.CmsTypeMapper;
import com.ruoyi.cms.type.domain.CmsType;
import com.ruoyi.cms.type.service.ICmsTypeService;

/**
 * 分类管理Service业务层处理
 * 
 * @author ning
 * @date 2022-01-02
 */
@Service
public class CmsTypeServiceImpl implements ICmsTypeService 
{
    @Autowired
    private CmsTypeMapper cmsTypeMapper;

    @Autowired
    private ISysFileInfoService sysFileInfoService;

    @Autowired
    private CmsBlogTypeMapper cmsBlogTypeMapper;

    /**
     * 查询分类管理
     * 
     * @param typeId 分类管理主键
     * @return 分类管理
     */
    @Override
    public CmsType selectCmsTypeByTypeId(Long typeId)
    {
        return cmsTypeMapper.selectCmsTypeByTypeId(typeId);
    }

    /**
     * 查询分类管理列表
     * 
     * @param cmsType 分类管理
     * @return 分类管理
     */
    @Override
    public List<CmsType> selectCmsTypeList(CmsType cmsType)
    {
        List<CmsType> cmsTypeList = cmsTypeMapper.selectCmsTypeList(cmsType);
        for (CmsType type : cmsTypeList) {
            int blogNum = cmsBlogTypeMapper.countBlogByTypeId(type.getTypeId());
            type.setBlogNum(blogNum);
        }
        return cmsTypeList;
    }

    /**
     * 新增分类管理
     * 
     * @param cmsType 分类管理
     * @return 结果
     */
    @Override
    public int insertCmsType(CmsType cmsType)
    {
        List<CmsType> cmsTypeList = cmsTypeMapper.selectCmsTypeListByTypeName(cmsType.getTypeName());
        if (cmsTypeList.size()>0){
            throw new ServiceException("分类名称已存在");
        }
        cmsType.setCreateTime(DateUtils.getNowDate());
        return cmsTypeMapper.insertCmsType(cmsType);
    }

    /**
     * 修改分类管理
     * 
     * @param cmsType 分类管理
     * @return 结果
     */
    @Override
    public int updateCmsType(CmsType cmsType)
    {
        List<CmsType> cmsTypeList = cmsTypeMapper.selectCmsTypeListByTypeName(cmsType.getTypeName());
        if (cmsTypeList.size()>0){
            for (CmsType type : cmsTypeList) {
                if (!type.getTypeId().equals(cmsType.getTypeId())){
                    throw new ServiceException("分类名称已存在");
                }
            }
        }
        String typePic = cmsTypeMapper.selectCmsTypeByTypeId(cmsType.getTypeId()).getTypePic();
        if (typePic!=null&&!"".equals(typePic)&&!typePic.equals(cmsType.getTypePic())){
            int newFileNameSeparatorIndex = typePic.lastIndexOf("/");
            String FileName = typePic.substring(newFileNameSeparatorIndex + 1).toLowerCase();
            sysFileInfoService.deleteSysFileInfoByFileObjectName(FileName);
        }
        cmsType.setUpdateTime(DateUtils.getNowDate());
        return cmsTypeMapper.updateCmsType(cmsType);
    }

    /**
     * 批量删除分类管理
     * 
     * @param typeIds 需要删除的分类管理主键
     * @return 结果
     */
    @Override
    public int deleteCmsTypeByTypeIds(Long[] typeIds)
    {
        for (Long typeId : typeIds) {
            String typePic = cmsTypeMapper.selectCmsTypeByTypeId(typeId).getTypePic();
            if (typePic!=null&&!"".equals(typePic)){
                int newFileNameSeparatorIndex = typePic.lastIndexOf("/");
                String FileName = typePic.substring(newFileNameSeparatorIndex + 1).toLowerCase();
                sysFileInfoService.deleteSysFileInfoByFileObjectName(FileName);
            }
            //删除分类文章关联表信息
            cmsBlogTypeMapper.deleteBlogTypeByTypeId(typeId);
        }
        return cmsTypeMapper.deleteCmsTypeByTypeIds(typeIds);
    }

    /**
     * 删除分类管理信息
     * 
     * @param typeId 分类管理主键
     * @return 结果
     */
    @Override
    public int deleteCmsTypeByTypeId(Long typeId)
    {
        String typePic = cmsTypeMapper.selectCmsTypeByTypeId(typeId).getTypePic();
        if (typePic!=null&&!"".equals(typePic)){
            int newFileNameSeparatorIndex = typePic.lastIndexOf("/");
            String FileName = typePic.substring(newFileNameSeparatorIndex + 1).toLowerCase();
            sysFileInfoService.deleteSysFileInfoByFileObjectName(FileName);
        }
        //删除分类文章关联表信息
        cmsBlogTypeMapper.deleteBlogTypeByTypeId(typeId);
        return cmsTypeMapper.deleteCmsTypeByTypeId(typeId);
    }

    /**
     * 取消按钮-删除分类图片
     *
     * @param cmsType 分类管理
     * @return 结果
     */
    @Override
    public int cancel(CmsType cmsType) {
        String typePic = cmsType.getTypePic();
        if (typePic!=null&&!"".equals(typePic)){
            Long typeId = cmsType.getTypeId();
            if (typeId==null){
                int newFileNameSeparatorIndex = typePic.lastIndexOf("/");
                String FileName = typePic.substring(newFileNameSeparatorIndex + 1).toLowerCase();
                sysFileInfoService.deleteSysFileInfoByFileObjectName(FileName);
            }else {
                String Pic = cmsTypeMapper.selectCmsTypeByTypeId(typeId).getTypePic();
                if (!typePic.equals(Pic)){
                    int newFileNameSeparatorIndex = typePic.lastIndexOf("/");
                    String FileName = typePic.substring(newFileNameSeparatorIndex + 1).toLowerCase();
                    sysFileInfoService.deleteSysFileInfoByFileObjectName(FileName);
                }
            }
        }
        return 1;
    }
}
