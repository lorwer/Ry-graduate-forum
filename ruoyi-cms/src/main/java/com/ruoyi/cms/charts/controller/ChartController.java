package com.ruoyi.cms.charts.controller;
/**
 * @program: ruo-yi-vue-blog
 * @Author: WangNing
 * @Description: 〈图表后台接口〉
 * @Date: 2022/4/25 10:37
 */

import com.ruoyi.cms.blog.domain.CmsBlog;
import com.ruoyi.cms.charts.service.IChartService;
import com.ruoyi.cms.comment.domain.CmsComment;
import com.ruoyi.cms.comment.service.ICmsCommentService;
import com.ruoyi.cms.message.domain.CmsMessage;
import com.ruoyi.cms.message.service.ICmsMessageService;
import com.ruoyi.cms.tag.domain.CmsTag;
import com.ruoyi.cms.tag.service.ICmsTagService;
import com.ruoyi.cms.type.domain.CmsType;
import com.ruoyi.cms.type.service.ICmsTypeService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.framework.web.service.SysPermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @Author: WangNing
 * @Description:〈图表后台接口〉
 * @Date: 2022/4/25 10:37
 **/
@RestController
@RequestMapping("/cms/chart")
public class ChartController extends BaseController {
    @Autowired
    private IChartService chartService;

    @Autowired
    private ICmsTypeService cmsTypeService;

    @Autowired
    private ICmsTagService cmsTagService;

    @Autowired
    private ICmsCommentService cmsCommentService;

    @Autowired
    private ICmsMessageService cmsMessageService;

    @Autowired
    private SysPermissionService permissionService;

    /**
     * 查询总阅读量/文章总数/评论总数/留言总数
     */
    @GetMapping("/total")
    public Map total() {
        Map total = new HashMap();
        CmsBlog cmsBlog = new CmsBlog();
        CmsComment cmsComment = new CmsComment();
        CmsMessage cmsMessage = new CmsMessage();
        int views = 0;
        int message = 0;
        // 角色集合
        Set<String> roles = permissionService.getRolePermission(getLoginUser().getUser());
        if (!SecurityUtils.isAdmin(getUserId()) && !roles.contains("admin") && !roles.contains("cms")) {
            cmsBlog.setCreateBy(getUsername());
        }
        cmsBlog.setType("1");
        List<CmsBlog> blogList = chartService.selectList(cmsBlog);
        for (CmsBlog blog : blogList) {
            views += blog.getViews();
        }
        cmsComment.setDelFlag("0");
        List<CmsComment> commentList = cmsCommentService.selectCmsCommentList(cmsComment);
        cmsMessage.setDelFlag("0");
        List<CmsMessage> messageList = cmsMessageService.selectCmsMessageList(cmsMessage);
        total.put("views", views);
        total.put("blog", blogList.size());
        total.put("comment", commentList.size());
        total.put("message", messageList.size());
        return total;
    }

    /**
     * 查询平滑折线图数据
     */
    @GetMapping("/lineChart")
    public Map lineChart() {
        SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        SimpleDateFormat sd=new SimpleDateFormat("yyyy-MM-dd");
        Map lineChart = new HashMap();
        List datex = new ArrayList();
        List commentData = new ArrayList();
        List blogData = new ArrayList();
        List messageData = new ArrayList();
        CmsBlog cmsBlog = new CmsBlog();
        CmsComment cmsComment = new CmsComment();
        CmsMessage cmsMessage = new CmsMessage();
        Date date = new Date();
        //Mon
        Date MonBegin = getFrontDayBegin(date, 6);
        Date MonEnd = getFrontDayEnd(date, 6);
        datex.add(sd.format(MonBegin));
        //Tue
        Date TueBegin = getFrontDayBegin(date, 5);
        Date TueEnd = getFrontDayEnd(date, 5);
        datex.add(sd.format(TueBegin));
        //Wed
        Date WedBegin = getFrontDayBegin(date, 4);
        Date WedEnd = getFrontDayEnd(date, 4);
        datex.add(sd.format(WedBegin));
        //Thu
        Date ThuBegin = getFrontDayBegin(date, 3);
        Date ThuEnd = getFrontDayEnd(date, 3);
        datex.add(sd.format(ThuBegin));
        //Fri
        Date FriBegin = getFrontDayBegin(date, 2);
        Date FriEnd = getFrontDayEnd(date, 2);
        datex.add(sd.format(FriBegin));
        //Sat
        Date SatBegin = getFrontDayBegin(date, 1);
        Date SatEnd = getFrontDayEnd(date, 1);
        datex.add(sd.format(SatBegin));
        //Sun
        Date SunBegin = getFrontDayBegin(date, 0);
        Date SunEnd = getFrontDayEnd(date, 0);
        datex.add(sd.format(SunBegin));
        // 角色集合
        Set<String> roles = permissionService.getRolePermission(getLoginUser().getUser());
        if (!SecurityUtils.isAdmin(getUserId()) && !roles.contains("admin") && !roles.contains("cms")) {
            cmsBlog.setCreateBy(getUsername());
        }
        cmsBlog.setType("1");
        blogData.add(chartService.selectListBetweenCreateTime(cmsBlog,sf.format(MonBegin),sf.format(MonEnd)).size());
        blogData.add(chartService.selectListBetweenCreateTime(cmsBlog,sf.format(TueBegin),sf.format(TueEnd)).size());
        blogData.add(chartService.selectListBetweenCreateTime(cmsBlog,sf.format(WedBegin),sf.format(WedEnd)).size());
        blogData.add(chartService.selectListBetweenCreateTime(cmsBlog,sf.format(ThuBegin),sf.format(ThuEnd)).size());
        blogData.add(chartService.selectListBetweenCreateTime(cmsBlog,sf.format(FriBegin),sf.format(FriEnd)).size());
        blogData.add(chartService.selectListBetweenCreateTime(cmsBlog,sf.format(SatBegin),sf.format(SatEnd)).size());
        blogData.add(chartService.selectListBetweenCreateTime(cmsBlog,sf.format(SunBegin),sf.format(SunEnd)).size());
        cmsComment.setDelFlag("0");
        commentData.add(chartService.selectCmsCommentListBetweenCreateTime(cmsComment,sf.format(MonBegin),sf.format(MonEnd)).size());
        commentData.add(chartService.selectCmsCommentListBetweenCreateTime(cmsComment,sf.format(TueBegin),sf.format(TueEnd)).size());
        commentData.add(chartService.selectCmsCommentListBetweenCreateTime(cmsComment,sf.format(WedBegin),sf.format(WedEnd)).size());
        commentData.add(chartService.selectCmsCommentListBetweenCreateTime(cmsComment,sf.format(ThuBegin),sf.format(ThuEnd)).size());
        commentData.add(chartService.selectCmsCommentListBetweenCreateTime(cmsComment,sf.format(FriBegin),sf.format(FriEnd)).size());
        commentData.add(chartService.selectCmsCommentListBetweenCreateTime(cmsComment,sf.format(SatBegin),sf.format(SatEnd)).size());
        commentData.add(chartService.selectCmsCommentListBetweenCreateTime(cmsComment,sf.format(SunBegin),sf.format(SunEnd)).size());
        cmsMessage.setDelFlag("0");
        messageData.add(chartService.selectCmsMessageListBetweenCreateTime(cmsMessage,sf.format(MonBegin),sf.format(MonEnd)).size());
        messageData.add(chartService.selectCmsMessageListBetweenCreateTime(cmsMessage,sf.format(TueBegin),sf.format(TueEnd)).size());
        messageData.add(chartService.selectCmsMessageListBetweenCreateTime(cmsMessage,sf.format(WedBegin),sf.format(WedEnd)).size());
        messageData.add(chartService.selectCmsMessageListBetweenCreateTime(cmsMessage,sf.format(ThuBegin),sf.format(ThuEnd)).size());
        messageData.add(chartService.selectCmsMessageListBetweenCreateTime(cmsMessage,sf.format(FriBegin),sf.format(FriEnd)).size());
        messageData.add(chartService.selectCmsMessageListBetweenCreateTime(cmsMessage,sf.format(SatBegin),sf.format(SatEnd)).size());
        messageData.add(chartService.selectCmsMessageListBetweenCreateTime(cmsMessage,sf.format(SunBegin),sf.format(SunEnd)).size());
        lineChart.put("datex", datex);
        lineChart.put("blogData", blogData);
        lineChart.put("commentData", commentData);
        lineChart.put("messageData", messageData);
        return lineChart;
    }

    /**
     * 查询分类饼图数据
     */
    @GetMapping("/pieChart")
    public Map pieChart() {
        Map pieChart = new HashMap();
        CmsType cmsType = new CmsType();
        List type = new ArrayList();
        List data = new ArrayList();
        // 角色集合
        Set<String> roles = permissionService.getRolePermission(getLoginUser().getUser());
        if (!SecurityUtils.isAdmin(getUserId()) && !roles.contains("admin") && !roles.contains("cms")) {
            cmsType.setCreateBy(getUsername());
        }
        List<CmsType> list = cmsTypeService.selectCmsTypeList(cmsType);
        for (CmsType cType : list) {
            Map typeMap = new HashMap();
            type.add(cType.getTypeName());
            typeMap.put("name",cType.getTypeName());
            typeMap.put("value",cType.getBlogNum());
            data.add(typeMap);
        }
        pieChart.put("type", type);
        pieChart.put("data", data);
        return pieChart;
    }

    /**
     * 查询标签球数据
     */
    @GetMapping("/tagChart")
    public Map tagChart() {
        Map tagChart = new HashMap();
        CmsTag cmsTag = new CmsTag();
        List tag = new ArrayList();
        // 角色集合
        Set<String> roles = permissionService.getRolePermission(getLoginUser().getUser());
        if (!SecurityUtils.isAdmin(getUserId()) && !roles.contains("admin") && !roles.contains("cms")) {
            cmsTag.setCreateBy(getUsername());
        }
        List<CmsTag> list = cmsTagService.selectCmsTagList(cmsTag);
        for (CmsTag cTag : list) {
            tag.add(cTag.getTagName()+" "+String.valueOf(cTag.getBlogNum()));
        }
        tagChart.put("tag", tag);
        return tagChart;
    }

    /**
     * 查询柱状图数据
     */
    @GetMapping("/essayChart")
    public Map essayChart() {
        SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        SimpleDateFormat sd=new SimpleDateFormat("yyyy-MM-dd");
        Map essayChart = new HashMap();
        List datex = new ArrayList();
        List essayData = new ArrayList();
        CmsBlog cmsBlog = new CmsBlog();
        Date date = new Date();
        //Mon
        Date MonBegin = getFrontDayBegin(date, 6);
        Date MonEnd = getFrontDayEnd(date, 6);
        datex.add(sd.format(MonBegin));
        //Tue
        Date TueBegin = getFrontDayBegin(date, 5);
        Date TueEnd = getFrontDayEnd(date, 5);
        datex.add(sd.format(TueBegin));
        //Wed
        Date WedBegin = getFrontDayBegin(date, 4);
        Date WedEnd = getFrontDayEnd(date, 4);
        datex.add(sd.format(WedBegin));
        //Thu
        Date ThuBegin = getFrontDayBegin(date, 3);
        Date ThuEnd = getFrontDayEnd(date, 3);
        datex.add(sd.format(ThuBegin));
        //Fri
        Date FriBegin = getFrontDayBegin(date, 2);
        Date FriEnd = getFrontDayEnd(date, 2);
        datex.add(sd.format(FriBegin));
        //Sat
        Date SatBegin = getFrontDayBegin(date, 1);
        Date SatEnd = getFrontDayEnd(date, 1);
        datex.add(sd.format(SatBegin));
        //Sun
        Date SunBegin = getFrontDayBegin(date, 0);
        Date SunEnd = getFrontDayEnd(date, 0);
        datex.add(sd.format(SunBegin));
        // 角色集合
        Set<String> roles = permissionService.getRolePermission(getLoginUser().getUser());
        if (!SecurityUtils.isAdmin(getUserId()) && !roles.contains("admin") && !roles.contains("cms")) {
            cmsBlog.setCreateBy(getUsername());
        }
        cmsBlog.setType("2");
        List<CmsBlog> blogList = chartService.selectList(cmsBlog);
        essayData.add(chartService.selectListBetweenCreateTime(cmsBlog,sf.format(MonBegin),sf.format(MonEnd)).size());
        essayData.add(chartService.selectListBetweenCreateTime(cmsBlog,sf.format(TueBegin),sf.format(TueEnd)).size());
        essayData.add(chartService.selectListBetweenCreateTime(cmsBlog,sf.format(WedBegin),sf.format(WedEnd)).size());
        essayData.add(chartService.selectListBetweenCreateTime(cmsBlog,sf.format(ThuBegin),sf.format(ThuEnd)).size());
        essayData.add(chartService.selectListBetweenCreateTime(cmsBlog,sf.format(FriBegin),sf.format(FriEnd)).size());
        essayData.add(chartService.selectListBetweenCreateTime(cmsBlog,sf.format(SatBegin),sf.format(SatEnd)).size());
        essayData.add(chartService.selectListBetweenCreateTime(cmsBlog,sf.format(SunBegin),sf.format(SunEnd)).size());
        essayChart.put("datex", datex);
        essayChart.put("essayData", essayData);
        essayChart.put("total", blogList.size());
        return essayChart;
    }

    /**
     * 返回某个日期前几天的开始日期
     */
    public static Date getFrontDayBegin(Date date, int i) {
        Calendar cal = new GregorianCalendar();
        cal.setTime(date);
        cal.set(Calendar.DATE, cal.get(Calendar.DATE) - i);
        cal.set(Calendar.HOUR_OF_DAY, 0);
        cal.set(Calendar.MINUTE, 0);
        cal.set(Calendar.SECOND, 0);
        cal.set(Calendar.MILLISECOND, 0);
        return cal.getTime();
    }

    /**
     * 返回某个日期前几天的结束日期
     */
    public static Date getFrontDayEnd(Date date, int i) {
        Calendar cal = new GregorianCalendar();
        cal.setTime(date);
        cal.set(Calendar.DATE, cal.get(Calendar.DATE) - i);
        cal.set(Calendar.HOUR_OF_DAY, 23);
        cal.set(Calendar.MINUTE, 59);
        cal.set(Calendar.SECOND, 59);
        return cal.getTime();
    }
}
