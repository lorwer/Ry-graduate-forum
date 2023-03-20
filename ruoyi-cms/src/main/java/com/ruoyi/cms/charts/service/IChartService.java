package com.ruoyi.cms.charts.service;

import com.ruoyi.cms.post.domain.CmsPost;
import com.ruoyi.cms.comment.domain.CmsComment;
import com.ruoyi.cms.message.domain.CmsMessage;

import java.util.List;

/**
 * @program: ruo-yi-vue-forum
 * @Author: WangNing
 * @Description: 〈${DESCRIPTION}〉
 * @Date: 2022/4/27 10:17
 */
public interface IChartService {
    public List<CmsPost> selectList(CmsPost cmsPost);
    public List<CmsPost> selectListBetweenCreateTime(CmsPost cmsPost,String createTimeBegin,String createTimeEnd);
    public List<CmsComment> selectCmsCommentListBetweenCreateTime(CmsComment cmsComment,String createTimeBegin,String createTimeEnd);
    public List<CmsMessage> selectCmsMessageListBetweenCreateTime(CmsMessage cmsMessage,String createTimeBegin,String createTimeEnd);
}
