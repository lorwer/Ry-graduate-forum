package com.ruoyi.cms.post.service.impl;
/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈〉
 * @Date: 2022/1/2 23:44
 */

import com.ruoyi.cms.post.domain.CmsPostType;
import com.ruoyi.cms.post.mapper.CmsPostTypeMapper;
import com.ruoyi.cms.post.service.ICmsPostTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: WangNing
 * @Description:〈〉
 * @Date: 2022/1/2 23:44
 **/
@Service
public class CmsPostTypeServiceImpl implements ICmsPostTypeService {

    @Autowired
    CmsPostTypeMapper cmsPostTypeMapper;

    @Override
    public int batchPostType(List<CmsPostType> postTypeList) {
        return cmsPostTypeMapper.batchPostType(postTypeList);
    }

    @Override
    public int deletePostTypeByPostId(Long postId) {
        return cmsPostTypeMapper.deletePostTypeByPostId(postId);
    }

    @Override
    public int deletePostType(Long[] ids) {
        return cmsPostTypeMapper.deletePostType(ids);
    }

    @Override
    public List<CmsPostType> selectPostTypeList(Long postId) {
        return cmsPostTypeMapper.selectPostTypeList(postId);
    }
}
