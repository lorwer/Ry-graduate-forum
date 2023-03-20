package com.ruoyi.cms.post.controller;

import java.util.List;
import java.util.Set;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.cms.fileInfo.service.ISysFileInfoService;
import com.ruoyi.cms.tag.domain.CmsTag;
import com.ruoyi.cms.tag.service.ICmsTagService;
import com.ruoyi.cms.type.domain.CmsType;
import com.ruoyi.cms.type.service.ICmsTypeService;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.StringUtils;
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
import com.ruoyi.cms.post.domain.CmsPost;
import com.ruoyi.cms.post.service.ICmsPostService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;


/**
 * 帖子管理Controller
 * 
 * @author ning
 * @date 2022-01-01
 */
@RestController
@RequestMapping("/cms/post")
public class CmsPostController extends BaseController
{
    @Autowired
    private ICmsPostService cmsPostService;

    @Autowired
    private ICmsTypeService cmsTypeService;

    @Autowired
    private ICmsTagService cmsTagService;

    @Autowired
    private SysPermissionService permissionService;

    @Autowired
    private ISysFileInfoService sysFileInfoService;

    /**
     * 首页查询帖子列表
     */
    @GetMapping("/cms/cmsList")
    public TableDataInfo cmsList(CmsPost cmsPost)
    {
        startPage();
        //状态为发布
        cmsPost.setStatus("1");
        List<CmsPost> list = cmsPostService.selectCmsPostList(cmsPost);
        return getDataTable(list);
    }

    /**
     * 首页获取帖子详细信息
     */
    @GetMapping(value = { "/cms/detail/", "/cms/detail/{id}" })
    public AjaxResult getInfoDetail(@PathVariable(value = "id", required = false) Long id)
    {
        AjaxResult ajax = AjaxResult.success();
        CmsType cmsType = new CmsType();
        CmsTag cmsTag = new CmsTag();
        ajax.put("types", cmsTypeService.selectCmsTypeList(cmsType));
        ajax.put("tags", cmsTagService.selectCmsTagList(cmsTag));
        if (StringUtils.isNotNull(id))
        {
            ajax.put(AjaxResult.DATA_TAG, cmsPostService.selectCmsPostById(id));
        }
        return ajax;
    }

    /**
     * 首页按分类查询帖子列表
     */
    @GetMapping("/cms/cmsListByType/{id}")
    public TableDataInfo cmsListByTypeId(@PathVariable(value = "id", required = false) Long id)
    {
        startPage();
        List<CmsPost> list = cmsPostService.selectCmsPostListByTypeId(id);
        return getDataTable(list);
    }

    /**
     * 首页按标签查询帖子列表
     */
    @GetMapping("/cms/cmsListByTag/{id}")
    public TableDataInfo cmsListByTagId(@PathVariable(value = "id", required = false) Long id)
    {
        startPage();
        List<CmsPost> list = cmsPostService.selectCmsPostListByTagId(id);
        return getDataTable(list);
    }

    /**
     * 首页查询推荐帖子列表
     */
    @GetMapping("/cms/cmsListRecommend")
    public TableDataInfo cmsListRecommend(CmsPost cmsPost)
    {
        startPage();
        //状态为发布
        cmsPost.setStatus("1");
        List<CmsPost> list = cmsPostService.selectCmsPostListRecommend(cmsPost);
        return getDataTable(list);
    }

    /**
     * 首页增加阅读量
     */
    @GetMapping("/cms/addPostViews/{id}")
    public AjaxResult addPostViews(@PathVariable(value = "id", required = false) Long id)
    {
        CmsPost cmsPost = cmsPostService.selectCmsPostById(id);
        Long views = cmsPost.getViews();
        views+=Long.parseLong("1");
        cmsPost.setViews(views);
        cmsPostService.updateCmsPost(cmsPost);
        return AjaxResult.success(id);
    }

    /**
     * 随笔页查询帖子列表
     */
    @GetMapping("/cms/cmsEssayList")
    public TableDataInfo cmsEssayList(CmsPost cmsPost)
    {
        startPage();
        //状态为发布
        cmsPost.setStatus("1");
        List<CmsPost> list = cmsPostService.selectCmsPostList(cmsPost);
        return getDataTable(list);
    }

    /**
     * 查询帖子管理列表
     */
    @PreAuthorize("@ss.hasPermi('cms:post:list')")
    @GetMapping("/list")
    public TableDataInfo list(CmsPost cmsPost)
    {
        startPage();
        // 角色集合
        Set<String> roles = permissionService.getRolePermission(getLoginUser().getUser());
        if (!SecurityUtils.isAdmin(getUserId())&&!roles.contains("admin")&&!roles.contains("cms")){
            cmsPost.setCreateBy(getUsername());
        }
        List<CmsPost> list = cmsPostService.selectCmsPostList(cmsPost);
        return getDataTable(list);
    }

    /**
     * 导出帖子管理列表
     */
    @PreAuthorize("@ss.hasPermi('cms:post:export')")
    @Log(title = "帖子管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CmsPost cmsPost)
    {
        List<CmsPost> list = cmsPostService.selectCmsPostList(cmsPost);
        ExcelUtil<CmsPost> util = new ExcelUtil<CmsPost>(CmsPost.class);
        util.exportExcel(response, list, "帖子管理数据");
    }

    /**
     * 获取帖子管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('cms:post:query')")
    @GetMapping(value = { "/", "/{id}" })
    public AjaxResult getInfo(@PathVariable(value = "id", required = false) Long id)
    {
        AjaxResult ajax = AjaxResult.success();
        CmsType cmsType = new CmsType();
        CmsTag cmsTag = new CmsTag();
        ajax.put("types", cmsTypeService.selectCmsTypeList(cmsType));
        ajax.put("tags", cmsTagService.selectCmsTagList(cmsTag));
        if (StringUtils.isNotNull(id))
        {
            ajax.put(AjaxResult.DATA_TAG, cmsPostService.selectCmsPostById(id));
        }
        return ajax;
    }

    /**
     * 新增帖子管理
     */
    @PreAuthorize("@ss.hasPermi('cms:post:add')")
    @Log(title = "帖子管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CmsPost cmsPost)
    {
        cmsPost.setCreateBy(getUsername());
        Long postId = cmsPostService.insertCmsPost(cmsPost);
        if (postId==null){
            return AjaxResult.error();
        }
        return AjaxResult.success(postId);
    }

    /**
     * 修改帖子管理
     */
    @PreAuthorize("@ss.hasPermi('cms:post:edit')")
    @Log(title = "帖子管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CmsPost cmsPost)
    {
        cmsPost.setUpdateBy(getUsername());
        //删除原首图
        CmsPost oldPost = cmsPostService.selectCmsPostById(cmsPost.getId());
        if (cmsPost.getPostPic().isEmpty()||!cmsPost.getPostPic().equals(oldPost.getPostPic())){
            if(!oldPost.getPostPic().isEmpty()){
                String postPic = oldPost.getPostPic();
                if (postPic!=null&&!"".equals(postPic)){
                    int newFileNameSeparatorIndex = postPic.lastIndexOf("/");
                    String FileName = postPic.substring(newFileNameSeparatorIndex + 1).toLowerCase();
                    sysFileInfoService.deleteSysFileInfoByFileObjectName(FileName);
                }
            }
        }
        return toAjax(cmsPostService.updateCmsPost(cmsPost));
    }

    /**
     * 删除帖子管理
     */
    @PreAuthorize("@ss.hasPermi('cms:post:remove')")
    @Log(title = "帖子管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        //删除原首图
        for (Long id : ids) {
            CmsPost oldPost = cmsPostService.selectCmsPostById(id);
            if(!oldPost.getPostPic().isEmpty()){
                String postPic = oldPost.getPostPic();
                if (postPic!=null&&!"".equals(postPic)){
                    int newFileNameSeparatorIndex = postPic.lastIndexOf("/");
                    String FileName = postPic.substring(newFileNameSeparatorIndex + 1).toLowerCase();
                    sysFileInfoService.deleteSysFileInfoByFileObjectName(FileName);
                }
            }
        }
        return toAjax(cmsPostService.deleteCmsPostByIds(ids));
    }

    /**
     * 取消按钮-删除首图
     */
    @PreAuthorize("@ss.hasPermi('cms:post:edit')")
    @PostMapping("/cancel")
    public AjaxResult cancel(@RequestBody CmsPost cmsPost)
    {
        String postPic = cmsPost.getPostPic();
        if (postPic!=null&&!"".equals(postPic)){
            Long postId = cmsPost.getId();
            if (postId==null){
                int newFileNameSeparatorIndex = postPic.lastIndexOf("/");
                String FileName = postPic.substring(newFileNameSeparatorIndex + 1).toLowerCase();
                sysFileInfoService.deleteSysFileInfoByFileObjectName(FileName);
            }else {
                String Pic = cmsPostService.selectCmsPostById(postId).getPostPic();
                if (!postPic.equals(Pic)){
                    int newFileNameSeparatorIndex = postPic.lastIndexOf("/");
                    String FileName = postPic.substring(newFileNameSeparatorIndex + 1).toLowerCase();
                    sysFileInfoService.deleteSysFileInfoByFileObjectName(FileName);
                }
            }
        }
        return toAjax(1);
    }
}
