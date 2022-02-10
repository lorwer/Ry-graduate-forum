package com.ruoyi.cms.fileInfo.service;

import com.ruoyi.cms.fileInfo.domain.FileBlogInfo;

import java.util.List;

/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈${DESCRIPTION}〉
 * @Date: 2022/1/2 0:58
 */
public interface IFileBlogInfoService {
    /**
     * 批量新增
     */
    public int batchFileBlog(List<FileBlogInfo> fileBlogList);
    /**
     * 通过通知公告ID删除通知公告和文件关联
     */
    public int deleteFileBlogByBlogId(Long blogId);
    /**
     * 批量删除通知公告和文件关联
     */
    public int deleteFileBlog(Long[] ids);
    /**
     * 查询文件列表
     */
    public List<FileBlogInfo> selectFileBlogList(Long blogId);
}
