package com.ruoyi.cms.fileInfo.service.impl;

import java.util.List;

import com.ruoyi.common.config.RuoYiConfig;
import com.ruoyi.common.constant.Constants;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.file.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.cms.fileInfo.mapper.SysFileInfoMapper;
import com.ruoyi.cms.fileInfo.domain.SysFileInfo;
import com.ruoyi.cms.fileInfo.service.ISysFileInfoService;

/**
 * 文件管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-12-29
 */
@Service
public class SysFileInfoServiceImpl implements ISysFileInfoService 
{
    @Autowired
    private SysFileInfoMapper sysFileInfoMapper;

    @Override
    public SysFileInfo selectSysFileInfoByFileObjectName(String fileObjectName) {
        return sysFileInfoMapper.selectSysFileInfoByFileObjectName(fileObjectName);
    }

    /**
     * 查询文件管理
     * 
     * @param fileId 文件管理主键
     * @return 文件管理
     */
    @Override
    public SysFileInfo selectSysFileInfoByFileId(Long fileId)
    {
        return sysFileInfoMapper.selectSysFileInfoByFileId(fileId);
    }

    /**
     * 查询文件管理列表
     * 
     * @param sysFileInfo 文件管理
     * @return 文件管理
     */
    @Override
    public List<SysFileInfo> selectSysFileInfoList(SysFileInfo sysFileInfo)
    {
        return sysFileInfoMapper.selectSysFileInfoList(sysFileInfo);
    }

    /**
     * 新增文件管理
     * 
     * @param sysFileInfo 文件管理
     * @return 结果
     */
    @Override
    public int insertSysFileInfo(SysFileInfo sysFileInfo)
    {
        sysFileInfo.setCreateTime(DateUtils.getNowDate());
        return sysFileInfoMapper.insertSysFileInfo(sysFileInfo);
    }

    /**
     * 修改文件管理
     * 
     * @param sysFileInfo 文件管理
     * @return 结果
     */
    @Override
    public int updateSysFileInfo(SysFileInfo sysFileInfo)
    {
        sysFileInfo.setUpdateTime(DateUtils.getNowDate());
        return sysFileInfoMapper.updateSysFileInfo(sysFileInfo);
    }

    /**
     * 批量删除文件管理
     * 
     * @param fileIds 需要删除的文件管理主键
     * @return 结果
     */
    @Override
    public int deleteSysFileInfoByFileIds(Long[] fileIds)
    {
        for (int i = 0; i<fileIds.length; i++){
            Long fileId = fileIds[i];
            SysFileInfo sysFileInfo = sysFileInfoMapper.selectSysFileInfoByFileId(fileId);
            String filePath = RuoYiConfig.getProfile() + StringUtils.substringAfter(sysFileInfo.getFilePath(), Constants.RESOURCE_PREFIX);
            FileUtils.deleteFile(filePath);
        }
        return sysFileInfoMapper.deleteSysFileInfoByFileIds(fileIds);
    }

    /**
     * 删除文件管理信息
     * 
     * @param fileId 文件管理主键
     * @return 结果
     */
    @Override
    public int deleteSysFileInfoByFileId(Long fileId)
    {
        SysFileInfo sysFileInfo = sysFileInfoMapper.selectSysFileInfoByFileId(fileId);
        String filePath = RuoYiConfig.getProfile() + StringUtils.substringAfter(sysFileInfo.getFilePath(), Constants.RESOURCE_PREFIX);
        FileUtils.deleteFile(filePath);
        return sysFileInfoMapper.deleteSysFileInfoByFileId(fileId);
    }

    @Override
    public int deleteSysFileInfoByFileObjectName(String fileObjectName) {
        SysFileInfo sysFileInfo = sysFileInfoMapper.selectSysFileInfoByFileObjectName(fileObjectName);
        String filePath = RuoYiConfig.getProfile() + StringUtils.substringAfter(sysFileInfo.getFilePath(), Constants.RESOURCE_PREFIX);
        FileUtils.deleteFile(filePath);
        return sysFileInfoMapper.deleteSysFileInfoByFileObjectName(fileObjectName);
    }
}
