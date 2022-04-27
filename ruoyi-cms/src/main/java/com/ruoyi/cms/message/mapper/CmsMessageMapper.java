package com.ruoyi.cms.message.mapper;

import java.util.List;
import com.ruoyi.cms.message.domain.CmsMessage;
import org.apache.ibatis.annotations.Param;

/**
 * 留言管理Mapper接口
 * 
 * @author ning
 * @date 2022-01-15
 */
public interface CmsMessageMapper 
{
    /**
     * 查询留言管理
     * 
     * @param id 留言管理主键
     * @return 留言管理
     */
    public CmsMessage selectCmsMessageById(Long id);

    /**
     * 查询留言管理列表
     * 
     * @param cmsMessage 留言管理
     * @return 留言管理集合
     */
    public List<CmsMessage> selectCmsMessageList(CmsMessage cmsMessage);

    public List<CmsMessage> selectCmsMessageListBetweenCreateTime(@Param("type") String type, @Param("delFlag") String delFlag, @Param("createTimeBegin") String createTimeBegin, @Param("createTimeEnd") String createTimeEnd);

    /**
     * 查询子留言列表
     */
    public List<CmsMessage> selectChildMessageList(CmsMessage cmsMessage);

    /**
     * 新增留言管理
     * 
     * @param cmsMessage 留言管理
     * @return 结果
     */
    public int insertCmsMessage(CmsMessage cmsMessage);

    /**
     * 修改留言管理
     * 
     * @param cmsMessage 留言管理
     * @return 结果
     */
    public int updateCmsMessage(CmsMessage cmsMessage);

    /**
     * 删除留言管理
     * 
     * @param id 留言管理主键
     * @return 结果
     */
    public int deleteCmsMessageById(Long id);

    /**
     * 批量删除留言管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCmsMessageByIds(Long[] ids);

    /**
     * 删除留言管理
     *
     * @param id 留言管理主键
     * @return 结果
     */
    public int updateDelFlagById(Long id);

    /**
     * 批量删除留言管理
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int updateDelFlagByIds(Long[] ids);
}
