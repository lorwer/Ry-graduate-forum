package com.ruoyi.cms.message.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

import java.util.List;

/**
 * 留言管理对象 cms_message
 * 
 * @author ning
 * @date 2022-01-15
 */
public class CmsMessage extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long id;

    /** 父留言id */
    @Excel(name = "父留言id")
    private Long parentId;

    /** 主留言id(第一级留言) */
    @Excel(name = "主留言id(第一级留言)")
    private Long mainId;

    /** 点赞数量 */
    @Excel(name = "点赞数量")
    private Long likeNum;

    /** 内容 */
    @Excel(name = "内容")
    private String content;

    /** 留言类型：（0代表留言 1代表回复） */
    @Excel(name = "留言类型：（0代表留言 1代表回复）")
    private String type;

    /** 被留言者id，可以是人、项目、资源 */
    @Excel(name = "被留言者id，可以是人、项目、资源")
    private Long blogId;

    /** 留言者id */
    @Excel(name = "留言者id")
    private Long userId;

    /** 删除标志（0代表存在 1代表删除） */
    @Excel(name = "删除标志（0代表存在 1代表删除）")
    private String delFlag;

    /** 头像 */
    private String avatar;

    /** 回复 */
    private List<CmsMessage> children;

    /** 父留言者 */
    private String pCreateBy;

    /** 点赞 */
    private boolean isLike;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setParentId(Long parentId) 
    {
        this.parentId = parentId;
    }

    public Long getParentId() 
    {
        return parentId;
    }
    public void setLikeNum(Long likeNum) 
    {
        this.likeNum = likeNum;
    }

    public Long getMainId() {
        return mainId;
    }

    public void setMainId(Long mainId) {
        this.mainId = mainId;
    }

    public Long getLikeNum()
    {
        return likeNum;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setType(String type) 
    {
        this.type = type;
    }

    public String getType() 
    {
        return type;
    }
    public void setBlogId(Long blogId) 
    {
        this.blogId = blogId;
    }

    public Long getBlogId() 
    {
        return blogId;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public List<CmsMessage> getChildren() {
        return children;
    }

    public void setChildren(List<CmsMessage> children) {
        this.children = children;
    }

    public String getPCreateBy() {
        return pCreateBy;
    }

    public void setPCreateBy(String pCreateBy) {
        this.pCreateBy = pCreateBy;
    }

    public boolean getIsLike() {
        return isLike;
    }

    public void setIsLike(boolean isLike) {
        this.isLike = isLike;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("parentId", getParentId())
            .append("mainId", getMainId())
            .append("likeNum", getLikeNum())
            .append("content", getContent())
            .append("type", getType())
            .append("blogId", getBlogId())
            .append("userId", getUserId())
            .append("delFlag", getDelFlag())
            .append("avatar",getAvatar())
            .append("children",getChildren())
            .append("pCreateBy",getPCreateBy())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("isLike", getIsLike())
            .toString();
    }
}
