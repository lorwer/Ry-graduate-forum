package com.ruoyi.cms.message.domain;
/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈留言点赞实体类〉
 * @Date: 2022/1/19 8:38
 */

import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * @Author: WangNing
 * @Description:〈留言点赞实体类〉
 * @Date: 2022/1/19 8:38
 **/
public class CmsMessageLike  extends BaseEntity {

    private static final long serialVersionUID = 1L;

    private Long messageId;
    private Long userId;

    /** 点赞数量 */
    private Long likeNum;

    public Long getMessageId() {
        return messageId;
    }

    public void setMessageId(Long messageId) {
        this.messageId = messageId;
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
                .append("messageId", getMessageId())
                .append("userId", getUserId())
                .append("likeNum", getLikeNum())
                .toString();
    }
}
