package com.ruoyi.web.controller.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.cms.fileInfo.domain.SysFileInfo;
import com.ruoyi.cms.fileInfo.service.ISysFileInfoService;
import com.ruoyi.common.core.domain.model.LoginUser;
import com.ruoyi.common.utils.SecurityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import com.ruoyi.common.config.RuoYiConfig;
import com.ruoyi.common.constant.Constants;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.file.FileUploadUtils;
import com.ruoyi.common.utils.file.FileUtils;
import com.ruoyi.framework.config.ServerConfig;

import java.text.DecimalFormat;
import java.util.List;

/**
 * 通用请求处理
 * 
 * @author ruoyi
 */
@RestController
public class CommonController
{
    private static final Logger log = LoggerFactory.getLogger(CommonController.class);

    @Autowired
    private ServerConfig serverConfig;

    @Autowired
    private ISysFileInfoService sysFileInfoService;

    /**
     * 通用下载请求
     * 
     * @param fileName 文件名称
     * @param delete 是否删除
     */
    @GetMapping("common/download")
    public void fileDownload(String fileName, Boolean delete, HttpServletResponse response, HttpServletRequest request)
    {
        try
        {
            if (!FileUtils.checkAllowDownload(fileName))
            {
                throw new Exception(StringUtils.format("文件名称({})非法，不允许下载。 ", fileName));
            }
            String realFileName = System.currentTimeMillis() + fileName.substring(fileName.indexOf("_") + 1);
            String filePath = RuoYiConfig.getDownloadPath() + fileName;

            response.setContentType(MediaType.APPLICATION_OCTET_STREAM_VALUE);
            FileUtils.setAttachmentResponseHeader(response, realFileName);
            FileUtils.writeBytes(filePath, response.getOutputStream());
            if (delete)
            {
                /*2021-12-29 新增文件管理*/
                SysFileInfo sysFileInfo = new SysFileInfo();
                sysFileInfo.setFileObjectName(fileName);
                List<SysFileInfo> sysFileInfos = sysFileInfoService.selectSysFileInfoList(sysFileInfo);
                sysFileInfos.forEach((SysFileInfo fileInfo)->{
                    sysFileInfoService.deleteSysFileInfoByFileObjectName(fileInfo.getFileObjectName());
                });
                /*结束*/
                FileUtils.deleteFile(filePath);
            }
        }
        catch (Exception e)
        {
            log.error("下载文件失败", e);
        }
    }

    /**
     * 通用上传请求
     */
    @PostMapping("/common/upload")
    public AjaxResult uploadFile(MultipartFile file) throws Exception
    {
        try
        {
            // 上传文件路径
            String filePath = RuoYiConfig.getUploadPath();
            // 上传并返回新文件名称
            String fileName = FileUploadUtils.upload(filePath, file);
            String url = serverConfig.getUrl() + fileName;
            AjaxResult ajax = AjaxResult.success();
            ajax.put("fileName", fileName);
            ajax.put("url", url);

            /*2021-12-29 新增文件管理*/
            SysFileInfo sysFileInfo = new SysFileInfo();
            int newFileNameSeparatorIndex = fileName.lastIndexOf("/");
            String newFileName = fileName.substring(newFileNameSeparatorIndex + 1).toLowerCase();
            int separatorIndex = newFileName.lastIndexOf(".");
            String suffix = newFileName.substring(separatorIndex + 1).toLowerCase();

            LoginUser loginUser = SecurityUtils.getLoginUser();

            // 计算文件大小信息
            long size = file.getSize();
            String fileSizeInfo = "0kB";
            if (size!=0){
                String[] unitNames = new String[]{"B", "kB", "MB", "GB", "TB", "EB"};
                int digitGroups = Math.min(unitNames.length-1, (int) (Math.log10(size) / Math.log10(1024)));
                fileSizeInfo = new DecimalFormat("#,##0.##").format(size / Math.pow(1024, digitGroups)) + " " + unitNames[digitGroups];
            }

            sysFileInfo.setFileOriginName(file.getOriginalFilename());
            sysFileInfo.setFileSuffix(suffix);
            sysFileInfo.setFileSizeInfo(fileSizeInfo);
            sysFileInfo.setFileObjectName(newFileName);
            sysFileInfo.setFilePath(fileName);
            sysFileInfo.setDelFlag("N");
            sysFileInfo.setCreateBy(loginUser.getUsername());
            sysFileInfoService.insertSysFileInfo(sysFileInfo);
            Long fileId = sysFileInfo.getFileId();
            ajax.put("fileId", fileId);
            ajax.put("fileOriginName", file.getOriginalFilename());
            ajax.put("fileSuffix", suffix);
            ajax.put("fileSize", fileSizeInfo);
            /*结束*/

            return ajax;
        }
        catch (Exception e)
        {
            return AjaxResult.error(e.getMessage());
        }
    }

    /**
     * 本地资源通用下载
     */
    @GetMapping("/common/download/resource")
    public void resourceDownload(String resource, HttpServletRequest request, HttpServletResponse response)
            throws Exception
    {
        try
        {
            if (!FileUtils.checkAllowDownload(resource))
            {
                throw new Exception(StringUtils.format("资源文件({})非法，不允许下载。 ", resource));
            }
            // 本地资源路径
            String localPath = RuoYiConfig.getProfile();
            // 数据库资源地址
            String downloadPath = localPath + StringUtils.substringAfter(resource, Constants.RESOURCE_PREFIX);
            // 下载名称
            String downloadName = StringUtils.substringAfterLast(downloadPath, "/");
            response.setContentType(MediaType.APPLICATION_OCTET_STREAM_VALUE);
            FileUtils.setAttachmentResponseHeader(response, downloadName);
            FileUtils.writeBytes(downloadPath, response.getOutputStream());
        }
        catch (Exception e)
        {
            log.error("下载文件失败", e);
        }
    }
}
