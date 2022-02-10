package com.ruoyi.cms.message.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.ruoyi.cms.message.domain.CmsMessageLike;
import com.ruoyi.cms.message.mapper.CmsMessageLikeMapper;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.system.mapper.SysUserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.cms.message.mapper.CmsMessageMapper;
import com.ruoyi.cms.message.domain.CmsMessage;
import com.ruoyi.cms.message.service.ICmsMessageService;

/**
 * 留言管理Service业务层处理
 * 
 * @author ning
 * @date 2022-01-15
 */
@Service
public class CmsMessageServiceImpl implements ICmsMessageService 
{
    @Autowired
    private CmsMessageMapper cmsMessageMapper;

    @Autowired
    private SysUserMapper sysUserMapper;

    @Autowired
    private CmsMessageLikeMapper cmsMessageLikeMapper;

    /**
     * 首页查询留言列表
     */
    @Override
    public List<CmsMessage> selectMessageList(CmsMessage cmsMessage) {
        //判断是否登录
        Long logUserUserId = null;
        String createBy = cmsMessage.getCreateBy();
        if (createBy!=null&&!"".equals(createBy)){
            SysUser logUser = sysUserMapper.selectUserByUserName(createBy);
            logUserUserId = logUser.getUserId();
        }
        cmsMessage.setCreateBy(null);
        cmsMessage.setType("0");
        cmsMessage.setDelFlag("0");
        List<CmsMessage> cmsMessageList = cmsMessageMapper.selectCmsMessageList(cmsMessage);
        for (CmsMessage message : cmsMessageList) {
            //添加头像
            Long userId = message.getUserId();
            if (userId!=null){
                SysUser user = sysUserMapper.selectUserById(userId);
                message.setAvatar(user.getAvatar());
            }
            //添加是否被点赞
            if (logUserUserId!=null){
                CmsMessageLike messageLike = new CmsMessageLike();
                messageLike.setMessageId(message.getId());
                messageLike.setUserId(logUserUserId);
                List<CmsMessageLike> likeList = cmsMessageLikeMapper.selectCmsMessageLikeList(messageLike);
                if (likeList.size()>0){
                    message.setIsLike(true);
                }else {
                    message.setIsLike(false);
                }
            }
            //添加子评论(回复)
            CmsMessage childMessage = new CmsMessage();
            childMessage.setType("1");
            childMessage.setMainId(message.getId());
            List<CmsMessage> childMessageList = cmsMessageMapper.selectChildMessageList(childMessage);
            if (childMessageList.size()>0){
                for (CmsMessage childListMessage : childMessageList) {
                    //添加头像
                    Long childUserId = childListMessage.getUserId();
                    if (childUserId!=null){
                        SysUser user = sysUserMapper.selectUserById(childUserId);
                        childListMessage.setAvatar(user.getAvatar());
                    }
                    //添加是否被点赞
                    if (logUserUserId!=null){
                        CmsMessageLike messageLike = new CmsMessageLike();
                        messageLike.setMessageId(message.getId());
                        messageLike.setUserId(logUserUserId);
                        List<CmsMessageLike> likeList = cmsMessageLikeMapper.selectCmsMessageLikeList(messageLike);
                        if (likeList.size()>0){
                            message.setIsLike(true);
                        }else {
                            message.setIsLike(false);
                        }
                    }
                    //添加父留言信息
                    CmsMessage byId = cmsMessageMapper.selectCmsMessageById(childListMessage.getParentId());
                    childListMessage.setPCreateBy(byId.getCreateBy());
                }
                message.setChildren(childMessageList);
            }
        }
        return cmsMessageList;
    }

    @Override
    public int addCmsMessageLike(CmsMessageLike cmsMessageLike) {
        int result = -1;
        String createBy = cmsMessageLike.getCreateBy();
        if (!"".equals(createBy)&&createBy!=null){
            SysUser user = sysUserMapper.selectUserByUserName(createBy);
            if (user!=null){
                cmsMessageLike.setUserId(user.getUserId());
                cmsMessageLikeMapper.addCmsMessageLike(cmsMessageLike);
            }
        }
        //修改点赞数量
        CmsMessage cmsMessage = new CmsMessage();
        cmsMessage.setId(cmsMessageLike.getMessageId());
        cmsMessage.setLikeNum(cmsMessageLike.getLikeNum());
        result = cmsMessageMapper.updateCmsMessage(cmsMessage);
        return result;
    }

    @Override
    public int delCmsMessageLike(CmsMessageLike cmsMessageLike) {
        int result = -1;
        String createBy = cmsMessageLike.getCreateBy();
        if (!"".equals(createBy)&&createBy!=null){
            SysUser user = sysUserMapper.selectUserByUserName(createBy);
            if (user!=null){
                cmsMessageLike.setUserId(user.getUserId());
                cmsMessageLikeMapper.deleteCmsMessageLike(cmsMessageLike);
            }
        }
        //修改点赞数量
        CmsMessage cmsMessage = new CmsMessage();
        cmsMessage.setId(cmsMessageLike.getMessageId());
        cmsMessage.setLikeNum(cmsMessageLike.getLikeNum());
        result = cmsMessageMapper.updateCmsMessage(cmsMessage);
        return result;
    }

    /**
     * 查询留言管理
     * 
     * @param id 留言管理主键
     * @return 留言管理
     */
    @Override
    public CmsMessage selectCmsMessageById(Long id)
    {
        return cmsMessageMapper.selectCmsMessageById(id);
    }

    /**
     * 查询留言管理列表
     * 
     * @param cmsMessage 留言管理
     * @return 留言管理
     */
    @Override
    public List<CmsMessage> selectCmsMessageList(CmsMessage cmsMessage)
    {
        List<CmsMessage> cmsMessageList = new ArrayList<>();
        //判断用户权限
        String createBy = cmsMessage.getCreateBy();
        if (createBy!=null&&!"".equals(createBy)){
            SysUser user = sysUserMapper.selectUserByUserName(createBy);
            if (user!=null){
                List<CmsMessage> MessageList = cmsMessageMapper.selectCmsMessageList(cmsMessage);
                for (CmsMessage message : MessageList) {
                    //查询子评论(回复)
                    CmsMessage childMessage = new CmsMessage();
                    childMessage.setType("1");
                    childMessage.setParentId(message.getId());
                    List<CmsMessage> childMessageList = cmsMessageMapper.selectCmsMessageList(childMessage);
                    if (childMessageList.size()>0){
                        cmsMessageList.addAll(childMessageList);
                    }
                }
                cmsMessageList.addAll(MessageList);
            }
        }else {
            cmsMessageList = cmsMessageMapper.selectCmsMessageList(cmsMessage);
        }
        for (CmsMessage message : cmsMessageList) {
            //添加头像
            Long userId = message.getUserId();
            if (userId!=null){
                SysUser user = sysUserMapper.selectUserById(userId);
                message.setAvatar(user.getAvatar());
            }
            //添加父留言信息
            Long parentId = message.getParentId();
            if (parentId!=null){
                CmsMessage parentMessage = cmsMessageMapper.selectCmsMessageById(parentId);
                message.setPCreateBy(parentMessage.getCreateBy());
            }
        }
        //排序
//        String[] sortNameArr1 = {"createTime"};
//        //true升序，false降序
//        boolean[] isAscArr1 = {false};
//        ListSortUtils.sort(cmsMessageList, sortNameArr1, isAscArr1);
//        cmsMessageList.sort((a,b)->a.getCreateBy().compareTo(b.getCreateBy()));
//        Collections.sort(cmsMessageList, new Comparator<CmsMessage>() {
//            @Override
//            public int compare(CmsMessage o1, CmsMessage o2) {
//                //升序
//                //return o1.getCreateBy().compareTo(o2.getCreateBy());
//                //降序
//                return o2.getCreateBy().compareTo(o1.getCreateBy());
//            }
//        });
        return cmsMessageList;
    }

    /**
     * 新增留言管理
     * 
     * @param cmsMessage 留言管理
     * @return 结果
     */
    @Override
    public int insertCmsMessage(CmsMessage cmsMessage)
    {
        String createBy = cmsMessage.getCreateBy();
        if (createBy!=null&&!"".equals(createBy)){
            SysUser user = sysUserMapper.selectUserByUserName(createBy);
            if (user!=null){
                cmsMessage.setUserId(user.getUserId());
            }
        }
        cmsMessage.setCreateTime(DateUtils.getNowDate());
        return cmsMessageMapper.insertCmsMessage(cmsMessage);
    }

    /**
     * 修改留言管理
     * 
     * @param cmsMessage 留言管理
     * @return 结果
     */
    @Override
    public int updateCmsMessage(CmsMessage cmsMessage)
    {
        cmsMessage.setUpdateTime(DateUtils.getNowDate());
        return cmsMessageMapper.updateCmsMessage(cmsMessage);
    }

    /**
     * 批量删除留言管理
     * 
     * @param ids 需要删除的留言管理主键
     * @return 结果
     */
    @Override
    public int deleteCmsMessageByIds(Long[] ids)
    {
        return cmsMessageMapper.updateDelFlagByIds(ids);
    }

    /**
     * 删除留言管理信息
     * 
     * @param id 留言管理主键
     * @return 结果
     */
    @Override
    public int deleteCmsMessageById(Long id)
    {
        return cmsMessageMapper.updateDelFlagById(id);
    }
}
