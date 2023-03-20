package com.ruoyi.cms.post.service.impl;
/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈〉
 * @Date: 2022/1/2 23:24
 */

import com.ruoyi.cms.post.domain.CmsPostTag;
import com.ruoyi.cms.post.mapper.CmsPostTagMapper;
import com.ruoyi.cms.post.service.ICmsPostTagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: WangNing
 * @Description:〈〉
 * @Date: 2022/1/2 23:24
 **/
@Service
public class CmsPostTagServiceImpl implements ICmsPostTagService {

    @Autowired
    CmsPostTagMapper cmsPostTagMapper;

    @Override
    public int batchPostTag(List<CmsPostTag> postTagList) {
        return cmsPostTagMapper.batchPostTag(postTagList);
    }

    @Override
    public int deletePostTagByPostId(Long postId) {
        return cmsPostTagMapper.deletePostTagByPostId(postId);
    }

    @Override
    public int deletePostTag(Long[] ids) {
        return cmsPostTagMapper.deletePostTag(ids);
    }

    @Override
    public List<CmsPostTag> selectPostTagList(Long postId) {
        return cmsPostTagMapper.selectPostTagList(postId);
    }
}
