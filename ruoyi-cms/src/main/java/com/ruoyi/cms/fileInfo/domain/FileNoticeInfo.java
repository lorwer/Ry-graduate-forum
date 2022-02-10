package com.ruoyi.cms.fileInfo.domain;
/**
 * @program: RuoYi-Vue
 * @Author: WangNing
 * @Description: 〈通知公告和文件关联 sys_notice_file〉
 * @Date: 2021/12/31 21:49
 */

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * @Author: WangNing
 * @Description:〈通知公告和文件关联 sys_notice_file〉
 * @Date: 2021/12/31 21:49
 **/
public class FileNoticeInfo {
    private Long fileId;
    private Long noticeId;
    private Long[] fileIds;

    public Long getFileId() {
        return fileId;
    }

    public void setFileId(Long fileId) {
        this.fileId = fileId;
    }

    public Long getNoticeId() {
        return noticeId;
    }

    public void setNoticeId(Long noticeId) {
        this.noticeId = noticeId;
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
                .append("roleId", getNoticeId())
                .toString();
    }
}
