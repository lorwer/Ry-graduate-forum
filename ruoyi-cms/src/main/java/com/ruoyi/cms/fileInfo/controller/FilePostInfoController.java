package com.ruoyi.cms.fileInfo.controller;
/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈〉
 * @Date: 2022/1/2 1:05
 */

import com.ruoyi.cms.fileInfo.domain.FilePostInfo;
import com.ruoyi.cms.fileInfo.domain.SysFileInfo;
import com.ruoyi.cms.fileInfo.service.IFilePostInfoService;
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
 * @Date: 2022/1/2 1:05
 **/
@RestController
@RequestMapping("/filePostInfo")
public class FilePostInfoController  extends BaseController {

    @Autowired
    private IFilePostInfoService filePostInfoService;

    @Autowired
    private ISysFileInfoService fileInfoService;

    /**
     * 新增post文件关联
     */
    @PreAuthorize("@ss.hasPermi('cms:post:add')")
    @PostMapping
    public AjaxResult add(@Validated @RequestBody FilePostInfo filePostInfo)
    {
        List<FilePostInfo> filePostList = new ArrayList<>();
        Long postId = filePostInfo.getPostId();
        Long[] fileIds = filePostInfo.getFileIds();
        for (Long fileId : fileIds) {
            FilePostInfo info = new FilePostInfo();
            info.setFileId(fileId);
            info.setPostId(postId);
            filePostList.add(info);
        }
        filePostInfoService.batchFilePost(filePostList);
        return toAjax(1);
    }

    /**
     * 删除post文件关联
     */
    @PreAuthorize("@ss.hasPermi('cms:post:remove')")
    @DeleteMapping("/{postIds}")
    public AjaxResult remove(@PathVariable Long[] postIds)
    {
        for (Long id : postIds) {
            List<FilePostInfo> filePostInfos = filePostInfoService.selectFilePostList(id);
            filePostInfos.forEach((FilePostInfo filePostInfo)->{
                Long fileId = filePostInfo.getFileId();
                fileInfoService.deleteSysFileInfoByFileId(fileId);
            });
        }
        filePostInfoService.deleteFilePost(postIds);
        return toAjax(1);
    }

    /**
     * 根据postId获取文件列表
     */
    @PreAuthorize("@ss.hasPermi('cms:post:query')")
    @GetMapping(value = "/{postId}")
    public AjaxResult getInfo(@PathVariable Long postId)
    {
        List<SysFileInfo> sysFileInfoList = new ArrayList<>();
        List<FilePostInfo> filePostInfos = filePostInfoService.selectFilePostList(postId);
        filePostInfos.forEach((FilePostInfo filePostInfo)->{
            Long fileId = filePostInfo.getFileId();
            SysFileInfo sysFileInfo = fileInfoService.selectSysFileInfoByFileId(fileId);
            if (sysFileInfo!=null){
                sysFileInfoList.add(sysFileInfo);
            }
        });
        return AjaxResult.success(sysFileInfoList);
    }

}
