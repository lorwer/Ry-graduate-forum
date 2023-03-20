package com.ruoyi.cms.post.domain;

import com.ruoyi.cms.tag.domain.CmsTag;
import com.ruoyi.cms.type.domain.CmsType;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

import java.util.List;

/**
 * 帖子管理对象 cms_post
 *
 * @author ning
 * @date 2022-01-01
 */
public class CmsPost extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * ID
     */
    private Long id;

    /**
     * 标题
     */
    @Excel(name = "标题")
    private String title;

    /**
     * 类型 1帖子 2随笔
     */
    @Excel(name = "类型")
    private String type;

    /**
     * 内容
     */
    @Excel(name = "内容")
    private String content;

    /**
     * 置顶（0否 1是）
     */
    @Excel(name = "置顶", readConverterExp = "0=否,1=是")
    private String top;

    /**
     * 阅读
     */
    @Excel(name = "阅读")
    private Long views;

    /**
     * 状态（0暂存 1发布）
     */
    @Excel(name = "状态", readConverterExp = "0=暂存,1=发布")
    private String status;

    /** 首页图片 */
    @Excel(name = "首页图片")
    private String postPic;

    /** 简介 */
    @Excel(name = "简介")
    private String postDesc;

    /** 附件列表 */
    private String postFiles;

    /**
     * 分类
     */
    private Long[] typeIds;

    /**
     * 分类
     */
    private Long[] tagIds;

    /** 角色对象 */
    private List<CmsTag> tags;

    /** 角色对象 */
    private List<CmsType> types;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getContent() {
        return content;
    }

    public void setTop(String top) {
        this.top = top;
    }

    public String getTop() {
        return top;
    }

    public void setViews(Long views) {
        this.views = views;
    }

    public Long getViews() {
        return views;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public Long[] getTypeIds() {
        return typeIds;
    }

    public void setTypeIds(Long[] typeIds) {
        this.typeIds = typeIds;
    }

    public Long[] getTagIds() {
        return tagIds;
    }

    public void setTagIds(Long[] tagIds) {
        this.tagIds = tagIds;
    }

    public List<CmsTag> getTags() {
        return tags;
    }

    public void setTags(List<CmsTag> tags) {
        this.tags = tags;
    }

    public List<CmsType> getTypes() {
        return types;
    }

    public void setTypes(List<CmsType> types) {
        this.types = types;
    }

    public String getPostPic() {
        return postPic;
    }

    public void setPostPic(String postPic) {
        this.postPic = postPic;
    }

    public String getPostDesc() {
        return postDesc;
    }

    public void setPostDesc(String postDesc) {
        this.postDesc = postDesc;
    }

    public String getPostFiles() {
        return postFiles;
    }

    public void setPostFiles(String postFiles) {
        this.postFiles = postFiles;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .append("title", getTitle())
                .append("type", getType())
                .append("content", getContent())
                .append("top", getTop())
                .append("views", getViews())
                .append("status", getStatus())
                .append("typeIds", getTypeIds())
                .append("tagIds", getTagIds())
                .append("tags", getTags())
                .append("types", getTypes())
                .append("postPic", getPostPic())
                .append("postDesc", getPostDesc())
                .append("postFiles", getPostFiles())
                .toString();
    }
}
