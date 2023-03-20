package com.ruoyi.cms.fileInfo.domain;
/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈post文件关联 cms_post_file〉
 * @Date: 2022/1/2 0:41
 */

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * @Author: WangNing
 * @Description:〈post文件关联 cms_post_file〉
 * @Date: 2022/1/2 0:41
 **/
public class FilePostInfo {
    private Long fileId;
    private Long postId;
    private Long[] fileIds;

    public Long getFileId() {
        return fileId;
    }

    public void setFileId(Long fileId) {
        this.fileId = fileId;
    }

    public Long getPostId() {
        return postId;
    }

    public void setPostId(Long postId) {
        this.postId = postId;
    }

    public Long[] getFileIds() {
        return fileIds;
    }

    public void setFileIds(Long[] fileIds) {
        this.fileIds = fileIds;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("fileId", getFileId())
                .append("postId", getPostId())
                .toString();
    }

}
