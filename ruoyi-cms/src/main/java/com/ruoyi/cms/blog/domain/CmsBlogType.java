package com.ruoyi.cms.blog.domain;
/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈blog类型关联表 cms_blog_type〉
 * @Date: 2022/1/2 23:34
 */

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * @Author: WangNing
 * @Description:〈blog分类关联表 cms_blog_type〉
 * @Date: 2022/1/2 23:34
 **/
public class CmsBlogType {
    private Long typeId;
    private Long blogId;
    private Long[] typeIds;

    public Long getTypeId() {
        return typeId;
    }

    public void setTypeId(Long typeId) {
        this.typeId = typeId;
    }

    public Long getBlogId() {
        return blogId;
    }

    public void setBlogId(Long blogId) {
        this.blogId = blogId;
    }

    public Long[] getTypeIds() {
        return typeIds;
    }

    public void setTypeIds(Long[] typeIds) {
        this.typeIds = typeIds;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("typeId", getTypeId())
                .append("blogId", getBlogId())
                .toString();
    }
}
