package com.ruoyi.cms.fileInfo.mapper;

import com.ruoyi.cms.fileInfo.domain.FilePostInfo;

import java.util.List;

/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈post文件关联 数据层〉
 * @Date: 2022/1/2 0:48
 */
public interface FilePostInfoMapper {
    /**
     * 批量新增
     */
    public int batchFilePost(List<FilePostInfo> filePostList);
    /**
     * 通过postID删除post文件关联
     */
    public int deleteFilePostByPostId(Long postId);
    /**
     * 批量删除post文件关联
     */
    public int deleteFilePost(Long[] ids);
    /**
     * 查询文件列表
     */
    public List<FilePostInfo> selectFilePostList(Long postId);
}
