package com.ruoyi.cms.comment.domain;
/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈評論點贊实体类〉
 * @Date: 2022/1/22 17:48
 */

import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * @Author: WangNing
 * @Description:〈評論點贊实体类〉
 * @Date: 2022/1/22 17:48
 **/
public class CmsCommentLike  extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long commentId;
    private Long userId;

    /** 点赞数量 */
    private Long likeNum;

    public Long getCommentId() {
        return commentId;
    }

    public void setCommentId(Long commentId) {
        this.commentId = commentId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getLikeNum() {
        return likeNum;
    }

    public void setLikeNum(Long likeNum) {
        this.likeNum = likeNum;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("commentId", getCommentId())
                .append("userId", getUserId())
                .append("likeNum", getLikeNum())
                .toString();
    }
}
