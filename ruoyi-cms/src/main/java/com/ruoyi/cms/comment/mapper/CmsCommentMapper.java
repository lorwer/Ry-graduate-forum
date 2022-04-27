package com.ruoyi.cms.comment.mapper;

import java.util.List;
import com.ruoyi.cms.comment.domain.CmsComment;
import com.ruoyi.cms.message.domain.CmsMessage;
import org.apache.ibatis.annotations.Param;

/**
 * 评论管理Mapper接口
 * 
 * @author ning
 * @date 2022-01-21
 */
public interface CmsCommentMapper 
{
    /**
     * 查询评论管理
     * 
     * @param id 评论管理主键
     * @return 评论管理
     */
    public CmsComment selectCmsCommentById(Long id);

    /**
     * 查询评论管理列表
     * 
     * @param cmsComment 评论管理
     * @return 评论管理集合
     */
    public List<CmsComment> selectCmsCommentList(CmsComment cmsComment);

    public List<CmsComment> selectCmsCommentListBetweenCreateTime(@Param("type") String type, @Param("delFlag") String delFlag, @Param("createTimeBegin") String createTimeBegin, @Param("createTimeEnd") String createTimeEnd);

    /**
     * 查询子留言列表
     */
    public List<CmsComment> selectChildCommentList(CmsComment cmsComment);

    /**
     * 新增评论管理
     * 
     * @param cmsComment 评论管理
     * @return 结果
     */
    public int insertCmsComment(CmsComment cmsComment);

    /**
     * 修改评论管理
     * 
     * @param cmsComment 评论管理
     * @return 结果
     */
    public int updateCmsComment(CmsComment cmsComment);

    /**
     * 删除评论管理
     * 
     * @param id 评论管理主键
     * @return 结果
     */
    public int deleteCmsCommentById(Long id);

    /**
     * 批量删除评论管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCmsCommentByIds(Long[] ids);

    /**
     * 删除评论管理
     *
     * @param id 评论管理主键
     * @return 结果
     */
    public int updateDelFlagById(Long id);

    /**
     * 批量删除评论管理
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int updateDelFlagByIds(Long[] ids);
}
