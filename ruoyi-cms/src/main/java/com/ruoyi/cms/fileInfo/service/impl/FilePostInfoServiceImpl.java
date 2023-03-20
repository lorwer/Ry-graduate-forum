package com.ruoyi.cms.fileInfo.service.impl;
/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈〉
 * @Date: 2022/1/2 1:00
 */

import com.ruoyi.cms.fileInfo.domain.FilePostInfo;
import com.ruoyi.cms.fileInfo.mapper.FilePostInfoMapper;
import com.ruoyi.cms.fileInfo.service.IFilePostInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: WangNing
 * @Description:〈〉
 * @Date: 2022/1/2 1:00
 **/
@Service
public class FilePostInfoServiceImpl implements IFilePostInfoService {

    @Autowired
    private FilePostInfoMapper filePostInfoMapper;

    @Override
    public int batchFilePost(List<FilePostInfo> filePostList) {
        return filePostInfoMapper.batchFilePost(filePostList);
    }

    @Override
    public int deleteFilePostByPostId(Long postId) {
        return filePostInfoMapper.deleteFilePostByPostId(postId);
    }

    @Override
    public int deleteFilePost(Long[] ids) {
        return filePostInfoMapper.deleteFilePost(ids);
    }

    @Override
    public List<FilePostInfo> selectFilePostList(Long postId) {
        return filePostInfoMapper.selectFilePostList(postId);
    }
}
