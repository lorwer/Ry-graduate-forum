package com.ruoyi.cms.charts.service.impl;
/**
 * @program: ruo-yi-vue-forum
 * @Author: WangNing
 * @Description: 〈〉
 * @Date: 2022/4/27 10:18
 */

import com.ruoyi.cms.post.domain.CmsPost;
import com.ruoyi.cms.post.mapper.CmsPostMapper;
import com.ruoyi.cms.charts.service.IChartService;
import com.ruoyi.cms.comment.domain.CmsComment;
import com.ruoyi.cms.comment.mapper.CmsCommentMapper;
import com.ruoyi.cms.message.domain.CmsMessage;
import com.ruoyi.cms.message.mapper.CmsMessageMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: WangNing
 * @Description:〈〉
 * @Date: 2022/4/27 10:18
 **/
@Service
public class ChartServiceImpl implements IChartService {

    @Autowired
    private CmsPostMapper cmsPostMapper;

    @Autowired
    private CmsCommentMapper cmsCommentMapper;

    @Autowired
    private CmsMessageMapper cmsMessageMapper;

    @Override
    public List<CmsPost> selectList(CmsPost cmsPost) {
        return cmsPostMapper.selectCmsPostList(cmsPost);
    }

    @Override
    public List<CmsPost> selectListBetweenCreateTime(CmsPost cmsPost,String createTimeBegin,String createTimeEnd) {
        return cmsPostMapper.selectCmsPostListBetweenCreateTime(cmsPost.getTitle(),cmsPost.getType(),cmsPost.getTop(),cmsPost.getStatus(),createTimeBegin,createTimeEnd,cmsPost.getCreateBy());
    }

    @Override
    public List<CmsComment> selectCmsCommentListBetweenCreateTime(CmsComment cmsComment,String createTimeBegin,String createTimeEnd) {
        return cmsCommentMapper.selectCmsCommentListBetweenCreateTime(cmsComment.getType(),cmsComment.getDelFlag(),createTimeBegin,createTimeEnd);
    }

    @Override
    public List<CmsMessage> selectCmsMessageListBetweenCreateTime(CmsMessage cmsMessage, String createTimeBegin, String createTimeEnd) {
        return cmsMessageMapper.selectCmsMessageListBetweenCreateTime(cmsMessage.getType(),cmsMessage.getDelFlag(),createTimeBegin,createTimeEnd);
    }
}
