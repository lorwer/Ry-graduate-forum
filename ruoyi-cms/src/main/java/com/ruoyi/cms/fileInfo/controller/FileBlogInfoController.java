package com.ruoyi.cms.fileInfo.controller;
/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈〉
 * @Date: 2022/1/2 1:05
 */

import com.ruoyi.cms.fileInfo.domain.FileBlogInfo;
import com.ruoyi.cms.fileInfo.domain.SysFileInfo;
import com.ruoyi.cms.fileInfo.service.IFileBlogInfoService;
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
@RequestMapping("/fileBlogInfo")
public class FileBlogInfoController  extends BaseController {

    @Autowired
    private IFileBlogInfoService fileBlogInfoService;

    @Autowired
    private ISysFileInfoService fileInfoService;

    /**
     * 新增blog文件关联
     */
    @PreAuthorize("@ss.hasPermi('cms:blog:add')")
    @PostMapping
    public AjaxResult add(@Validated @RequestBody FileBlogInfo fileBlogInfo)
    {
        List<FileBlogInfo> fileBlogList = new ArrayList<>();
        Long blogId = fileBlogInfo.getBlogId();
        Long[] fileIds = fileBlogInfo.getFileIds();
        for (Long fileId : fileIds) {
            FileBlogInfo info = new FileBlogInfo();
            info.setFileId(fileId);
            info.setBlogId(blogId);
            fileBlogList.add(info);
        }
        fileBlogInfoService.batchFileBlog(fileBlogList);
        return toAjax(1);
    }

    /**
     * 删除blog文件关联
     */
    @PreAuthorize("@ss.hasPermi('cms:blog:remove')")
    @DeleteMapping("/{blogIds}")
    public AjaxResult remove(@PathVariable Long[] blogIds)
    {
        for (Long id : blogIds) {
            List<FileBlogInfo> fileBlogInfos = fileBlogInfoService.selectFileBlogList(id);
            fileBlogInfos.forEach((FileBlogInfo fileBlogInfo)->{
                Long fileId = fileBlogInfo.getFileId();
                fileInfoService.deleteSysFileInfoByFileId(fileId);
            });
        }
        fileBlogInfoService.deleteFileBlog(blogIds);
        return toAjax(1);
    }

    /**
     * 根据blogId获取文件列表
     */
    @PreAuthorize("@ss.hasPermi('cms:blog:query')")
    @GetMapping(value = "/{blogId}")
    public AjaxResult getInfo(@PathVariable Long blogId)
    {
        List<SysFileInfo> sysFileInfoList = new ArrayList<>();
        List<FileBlogInfo> fileBlogInfos = fileBlogInfoService.selectFileBlogList(blogId);
        fileBlogInfos.forEach((FileBlogInfo fileBlogInfo)->{
            Long fileId = fileBlogInfo.getFileId();
            SysFileInfo sysFileInfo = fileInfoService.selectSysFileInfoByFileId(fileId);
            if (sysFileInfo!=null){
                sysFileInfoList.add(sysFileInfo);
            }
        });
        return AjaxResult.success(sysFileInfoList);
    }

}
