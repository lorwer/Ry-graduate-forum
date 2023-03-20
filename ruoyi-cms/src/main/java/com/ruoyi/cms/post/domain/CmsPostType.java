package com.ruoyi.cms.post.domain;
/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈post类型关联表 cms_post_type〉
 * @Date: 2022/1/2 23:34
 */

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * @Author: WangNing
 * @Description:〈post分类关联表 cms_post_type〉
 * @Date: 2022/1/2 23:34
 **/
public class CmsPostType {
    private Long typeId;
    private Long postId;
    private Long[] typeIds;

    public Long getTypeId() {
        return typeId;
    }

    public void setTypeId(Long typeId) {
        this.typeId = typeId;
    }

    public Long getPostId() {
        return postId;
    }

    public void setPostId(Long postId) {
        this.postId = postId;
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
                .append("postId", getPostId())
                .toString();
    }
}
