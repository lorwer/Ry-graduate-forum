package com.ruoyi.cms.type.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 分类管理对象 cms_type
 * 
 * @author ning
 * @date 2022-01-02
 */
public class CmsType extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 分类ID */
    private Long typeId;

    /** 分类名称 */
    @Excel(name = "分类名称")
    private String typeName;

    /** 分类图像 */
    @Excel(name = "分类图像")
    private String typePic;

    /** 帖子数量 */
    private int postNum;

    public void setTypeId(Long typeId) 
    {
        this.typeId = typeId;
    }

    public Long getTypeId() 
    {
        return typeId;
    }
    public void setTypeName(String typeName) 
    {
        this.typeName = typeName;
    }

    public String getTypeName() 
    {
        return typeName;
    }
    public void setTypePic(String typePic) 
    {
        this.typePic = typePic;
    }

    public String getTypePic() 
    {
        return typePic;
    }

    public int getPostNum() {
        return postNum;
    }

    public void setPostNum(int postNum) {
        this.postNum = postNum;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("typeId", getTypeId())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("typeName", getTypeName())
            .append("typePic", getTypePic())
                .append("postNum", getPostNum())
            .toString();
    }
}
