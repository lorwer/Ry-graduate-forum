package com.ruoyi.cms.post.domain;
/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈post标签关联表 cms_post_tag〉
 * @Date: 2022/1/2 22:54
 */

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * @Author: WangNing
 * @Description:〈post标签关联表 cms_post_tag〉
 * @Date: 2022/1/2 22:54
 **/
public class CmsPostTag {
    private Long tagId;
    private Long postId;
    private Long[] tagIds;

    public Long getTagId() {
        return tagId;
    }

    public void setTagId(Long tagId) {
        this.tagId = tagId;
    }

    public Long getPostId() {
        return postId;
    }

    public void setPostId(Long postId) {
        this.postId = postId;
    }

    public Long[] getTagIds() {
        return tagIds;
    }

    public void setTagIds(Long[] tagIds) {
        this.tagIds = tagIds;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("tagId", getTagId())
                .append("postId", getPostId())
                .toString();
    }
}
