package com.ruoyi.cms.type.controller;

import java.util.List;
import java.util.Set;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.exception.ServiceException;
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
import com.ruoyi.cms.type.domain.CmsType;
import com.ruoyi.cms.type.service.ICmsTypeService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 分类管理Controller
 * 
 * @author ning
 * @date 2022-01-02
 */
@RestController
@RequestMapping("/cms/type")
public class CmsTypeController extends BaseController
{
    @Autowired
    private ICmsTypeService cmsTypeService;

    @Autowired
    private SysPermissionService permissionService;

    /**
     * 查询分类管理列表
     */
    @PreAuthorize("@ss.hasPermi('cms:type:list')")
    @GetMapping("/list")
    public TableDataInfo list(CmsType cmsType)
    {
        startPage();
        // 角色集合
        Set<String> roles = permissionService.getRolePermission(getLoginUser().getUser());
        if (!SecurityUtils.isAdmin(getUserId())&&!roles.contains("admin")&&!roles.contains("cms")){
            cmsType.setCreateBy(getUsername());
        }
        List<CmsType> list = cmsTypeService.selectCmsTypeList(cmsType);
        return getDataTable(list);
    }

    /**
     * 导出分类管理列表
     */
    @PreAuthorize("@ss.hasPermi('cms:type:export')")
    @Log(title = "分类管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CmsType cmsType)
    {
        List<CmsType> list = cmsTypeService.selectCmsTypeList(cmsType);
        ExcelUtil<CmsType> util = new ExcelUtil<CmsType>(CmsType.class);
        util.exportExcel(response, list, "分类管理数据");
    }

    /**
     * 获取分类管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('cms:type:query')")
    @GetMapping(value = "/{typeId}")
    public AjaxResult getInfo(@PathVariable("typeId") Long typeId)
    {
        return AjaxResult.success(cmsTypeService.selectCmsTypeByTypeId(typeId));
    }

    /**
     * 新增分类管理
     */
    @PreAuthorize("@ss.hasPermi('cms:type:add')")
    @Log(title = "分类管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CmsType cmsType)
    {
        cmsType.setCreateBy(getUsername());
        return toAjax(cmsTypeService.insertCmsType(cmsType));
    }

    /**
     * 修改分类管理
     */
    @PreAuthorize("@ss.hasPermi('cms:type:edit')")
    @Log(title = "分类管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CmsType cmsType)
    {
        cmsType.setUpdateBy(getUsername());
        return toAjax(cmsTypeService.updateCmsType(cmsType));
    }

    /**
     * 删除分类管理
     */
    @PreAuthorize("@ss.hasPermi('cms:type:remove')")
    @Log(title = "分类管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{typeIds}")
    public AjaxResult remove(@PathVariable Long[] typeIds)
    {
        return toAjax(cmsTypeService.deleteCmsTypeByTypeIds(typeIds));
    }

    /**
     * 取消按钮-删除分类图片
     */
    @PreAuthorize("@ss.hasPermi('cms:type:edit')")
    @PostMapping("/cancel")
    public AjaxResult cancel(@RequestBody CmsType cmsType)
    {
        return toAjax(cmsTypeService.cancel(cmsType));
    }

}
