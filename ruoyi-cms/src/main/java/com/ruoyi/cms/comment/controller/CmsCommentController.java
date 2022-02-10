package com.ruoyi.cms.comment.controller;

import java.util.List;
import java.util.Set;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.cms.comment.domain.CmsCommentLike;
import com.ruoyi.cms.message.domain.CmsMessage;
import com.ruoyi.cms.message.domain.CmsMessageLike;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.framework.web.service.SysPermissionService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.cms.comment.domain.CmsComment;
import com.ruoyi.cms.comment.service.ICmsCommentService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 评论管理Controller
 * 
 * @author ning
 * @date 2022-01-21
 */
@RestController
@RequestMapping("/cms/comment")
public class CmsCommentController extends BaseController
{
    @Autowired
    private ICmsCommentService cmsCommentService;

    @Autowired
    private SysPermissionService permissionService;


    /**
     * 首页查询评论列表
     */
    @GetMapping("/cms/list")
    public TableDataInfo cmsList(CmsComment cmsComment)
    {
        startPage();
        List<CmsComment> list = cmsCommentService.selectCommentList(cmsComment);
        return getDataTable(list);
    }

    /**
     * 首页新增评论
     */
    @PostMapping("/cms/addComment")
    public AjaxResult addComment(@RequestBody CmsComment cmsComment)
    {
        Long parentId = cmsComment.getParentId();
        if (parentId!=null){
            CmsComment comment = cmsCommentService.selectCmsCommentById(parentId);
            if (comment.getMainId()!=null){
                cmsComment.setMainId(comment.getMainId());
            }else {
                cmsComment.setMainId(parentId);
            }
        }
        return toAjax(cmsCommentService.insertCmsComment(cmsComment));
    }

    /**
     * 首页新增点赞
     */
    @PostMapping("/cms/addCmsCommentLike")
    public AjaxResult addCmsCommentLike(@RequestBody CmsCommentLike cmsCommentLike)
    {
        return toAjax(cmsCommentService.addCmsCommentLike(cmsCommentLike));
    }

    /**
     * 首页删除点赞
     */
    @Log(title = "删除评论点赞", businessType = BusinessType.DELETE)
    @PostMapping("/cms/delCmsCommentLike")
    public AjaxResult delCmsCommentLike(@RequestBody CmsCommentLike cmsCommentLike)
    {
        return toAjax(cmsCommentService.delCmsCommentLike(cmsCommentLike));
    }

    /**
     * 查询评论管理列表
     */
    @PreAuthorize("@ss.hasPermi('cms:comment:list')")
    @GetMapping("/list")
    public TableDataInfo list(CmsComment cmsComment)
    {
        // 角色集合
        Set<String> roles = permissionService.getRolePermission(getLoginUser().getUser());
        if (!SecurityUtils.isAdmin(getUserId())&&!roles.contains("admin")&&!roles.contains("cms")){
            cmsComment.setCreateBy(getUsername());
        }
        cmsComment.setDelFlag("0");
        startPage();
        List<CmsComment> list = cmsCommentService.selectCmsCommentList(cmsComment);
        return getDataTable(list);
    }

    /**
     * 导出评论管理列表
     */
    @PreAuthorize("@ss.hasPermi('cms:comment:export')")
    @Log(title = "评论管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CmsComment cmsComment)
    {
        List<CmsComment> list = cmsCommentService.selectCmsCommentList(cmsComment);
        ExcelUtil<CmsComment> util = new ExcelUtil<CmsComment>(CmsComment.class);
        util.exportExcel(response, list, "评论管理数据");
    }

    /**
     * 获取评论管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('cms:comment:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(cmsCommentService.selectCmsCommentById(id));
    }

    /**
     * 新增评论管理
     */
    @PreAuthorize("@ss.hasPermi('cms:comment:add')")
    @Log(title = "评论管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CmsComment cmsComment)
    {
        return toAjax(cmsCommentService.insertCmsComment(cmsComment));
    }

    /**
     * 修改评论管理
     */
    @PreAuthorize("@ss.hasPermi('cms:comment:edit')")
    @Log(title = "评论管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CmsComment cmsComment)
    {
        return toAjax(cmsCommentService.updateCmsComment(cmsComment));
    }

    /**
     * 删除评论管理
     */
    @PreAuthorize("@ss.hasPermi('cms:comment:remove')")
    @Log(title = "评论管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(cmsCommentService.deleteCmsCommentByIds(ids));
    }
}
