package com.ruoyi.cms.fileInfo.controller;
/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈〉
 * @Date: 2022/1/1 0:36
 */

import com.ruoyi.cms.fileInfo.domain.FileNoticeInfo;
import com.ruoyi.cms.fileInfo.domain.SysFileInfo;
import com.ruoyi.cms.fileInfo.service.IFileNoticeInfoService;
import com.ruoyi.cms.fileInfo.service.ISysFileInfoService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: WangNing
 * @Description:〈〉
 * @Date: 2022/1/1 0:36
 **/
@RestController
@RequestMapping("/fileNoticeInfo")
public class FileNoticeInfoController  extends BaseController {

    @Autowired
    private IFileNoticeInfoService fileNoticeInfoService;

    @Autowired
    private ISysFileInfoService fileInfoService;

    /**
     * 新增通知公告文件
     */
    @PreAuthorize("@ss.hasPermi('system:notice:add')")
    @PostMapping
    public AjaxResult add(@Validated @RequestBody FileNoticeInfo fileNoticeInfo)
    {
        List<FileNoticeInfo> fileNoticeList = new ArrayList<>();
        Long noticeId = fileNoticeInfo.getNoticeId();
        Long[] fileIds = fileNoticeInfo.getFileIds();
        for (Long fileId : fileIds) {
            FileNoticeInfo info = new FileNoticeInfo();
            info.setFileId(fileId);
            info.setNoticeId(noticeId);
            fileNoticeList.add(info);
        }
        fileNoticeInfoService.batchFileNotice(fileNoticeList);
        return toAjax(1);
    }

    /**
     * 删除通知公告文件
     */
    @PreAuthorize("@ss.hasPermi('system:notice:remove')")
    @DeleteMapping("/{noticeIds}")
    public AjaxResult remove(@PathVariable Long[] noticeIds)
    {
        for (Long id : noticeIds) {
            List<FileNoticeInfo> fileNoticeInfos = fileNoticeInfoService.selectFileNoticeList(id);
            fileNoticeInfos.forEach((FileNoticeInfo fileNoticeInfo)->{
                Long fileId = fileNoticeInfo.getFileId();
                fileInfoService.deleteSysFileInfoByFileId(fileId);
            });
        }
        fileNoticeInfoService.deleteFileNotice(noticeIds);
        return toAjax(1);
    }

    /**
     * 根据通知公告编号获取文件列表
     */
    @PreAuthorize("@ss.hasPermi('system:notice:query')")
    @GetMapping(value = "/{noticeId}")
    public AjaxResult getInfo(@PathVariable Long noticeId)
    {
        List<SysFileInfo> sysFileInfoList = new ArrayList<>();
        List<FileNoticeInfo> fileNoticeInfos = fileNoticeInfoService.selectFileNoticeList(noticeId);
        fileNoticeInfos.forEach((FileNoticeInfo fileNoticeInfo)->{
            Long fileId = fileNoticeInfo.getFileId();
            SysFileInfo sysFileInfo = fileInfoService.selectSysFileInfoByFileId(fileId);
            if (sysFileInfo!=null){
                sysFileInfoList.add(sysFileInfo);
            }
        });
        return AjaxResult.success(sysFileInfoList);
    }

}
