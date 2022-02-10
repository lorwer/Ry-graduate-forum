package com.ruoyi.cms.fileInfo.service;

import java.util.List;
import com.ruoyi.cms.fileInfo.domain.SysFileInfo;

/**
 * 文件管理Service接口
 * 
 * @author ruoyi
 * @date 2021-12-29
 */
public interface ISysFileInfoService 
{
    /**
     * 查询文件管理
     *
     * @param fileObjectName
     * @return 文件管理
     */
    public SysFileInfo selectSysFileInfoByFileObjectName(String fileObjectName);
    /**
     * 查询文件管理
     * 
     * @param fileId 文件管理主键
     * @return 文件管理
     */
    public SysFileInfo selectSysFileInfoByFileId(Long fileId);

    /**
     * 查询文件管理列表
     * 
     * @param sysFileInfo 文件管理
     * @return 文件管理集合
     */
    public List<SysFileInfo> selectSysFileInfoList(SysFileInfo sysFileInfo);

    /**
     * 新增文件管理
     * 
     * @param sysFileInfo 文件管理
     * @return 结果
     */
    public int insertSysFileInfo(SysFileInfo sysFileInfo);

    /**
     * 修改文件管理
     * 
     * @param sysFileInfo 文件管理
     * @return 结果
     */
    public int updateSysFileInfo(SysFileInfo sysFileInfo);

    /**
     * 批量删除文件管理
     * 
     * @param fileIds 需要删除的文件管理主键集合
     * @return 结果
     */
    public int deleteSysFileInfoByFileIds(Long[] fileIds);

    /**
     * 删除文件管理信息
     * 
     * @param fileId 文件管理主键
     * @return 结果
     */
    public int deleteSysFileInfoByFileId(Long fileId);

    /**
     * 删除文件管理信息
     *
     * @param fileObjectName
     * @return 结果
     */
    public int deleteSysFileInfoByFileObjectName(String fileObjectName);
}
