package com.ruoyi.cms.charts.service;

import com.ruoyi.cms.blog.domain.CmsBlog;
import com.ruoyi.cms.comment.domain.CmsComment;
import com.ruoyi.cms.message.domain.CmsMessage;

import java.util.List;

/**
 * @program: ruo-yi-vue-blog
 * @Author: WangNing
 * @Description: 〈${DESCRIPTION}〉
 * @Date: 2022/4/27 10:17
 */
public interface IChartService {
    public List<CmsBlog> selectList(CmsBlog cmsBlog);
    public List<CmsBlog> selectListBetweenCreateTime(CmsBlog cmsBlog,String createTimeBegin,String createTimeEnd);
    public List<CmsComment> selectCmsCommentListBetweenCreateTime(CmsComment cmsComment,String createTimeBegin,String createTimeEnd);
    public List<CmsMessage> selectCmsMessageListBetweenCreateTime(CmsMessage cmsMessage,String createTimeBegin,String createTimeEnd);
}
