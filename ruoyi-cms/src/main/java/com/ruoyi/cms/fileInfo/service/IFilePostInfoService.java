package com.ruoyi.cms.fileInfo.service;

import com.ruoyi.cms.fileInfo.domain.FilePostInfo;

import java.util.List;

/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈${DESCRIPTION}〉
 * @Date: 2022/1/2 0:58
 */
public interface IFilePostInfoService {
    /**
     * 批量新增
     */
    public int batchFilePost(List<FilePostInfo> filePostList);
    /**
     * 通过通知公告ID删除通知公告和文件关联
     */
    public int deleteFilePostByPostId(Long postId);
    /**
     * 批量删除通知公告和文件关联
     */
    public int deleteFilePost(Long[] ids);
    /**
     * 查询文件列表
     */
    public List<FilePostInfo> selectFilePostList(Long postId);
}
