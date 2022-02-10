package com.ruoyi.cms.message.service;

import java.util.List;
import com.ruoyi.cms.message.domain.CmsMessage;
import com.ruoyi.cms.message.domain.CmsMessageLike;

/**
 * 留言管理Service接口
 * 
 * @author ning
 * @date 2022-01-15
 */
public interface ICmsMessageService 
{
    /**
     * 首页查询留言列表
     */
    public List<CmsMessage> selectMessageList(CmsMessage cmsMessage);

    /**
     * 首页新增点赞
     */
    public int addCmsMessageLike(CmsMessageLike cmsMessageLike);

    /**
     * 首页删除点赞
     */
    public int delCmsMessageLike(CmsMessageLike cmsMessageLike);

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
     * 批量删除留言管理
     * 
     * @param ids 需要删除的留言管理主键集合
     * @return 结果
     */
    public int deleteCmsMessageByIds(Long[] ids);

    /**
     * 删除留言管理信息
     * 
     * @param id 留言管理主键
     * @return 结果
     */
    public int deleteCmsMessageById(Long id);
}
