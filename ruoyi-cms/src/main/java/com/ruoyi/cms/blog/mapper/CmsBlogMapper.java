package com.ruoyi.cms.blog.mapper;

import java.util.List;
import com.ruoyi.cms.blog.domain.CmsBlog;
import org.apache.ibatis.annotations.Param;

/**
 * 文章管理Mapper接口
 * 
 * @author ning
 * @date 2022-01-01
 */
public interface CmsBlogMapper 
{
    /**
     * 查询文章管理
     * 
     * @param id 文章管理主键
     * @return 文章管理
     */
    public CmsBlog selectCmsBlogById(Long id);

    /**
     * 查询文章管理列表
     * 
     * @param cmsBlog 文章管理
     * @return 文章管理集合
     */
    public List<CmsBlog> selectCmsBlogList(CmsBlog cmsBlog);

    public List<CmsBlog> selectCmsBlogListBetweenCreateTime(@Param("title") String title,@Param("type") String type,@Param("top") String top,@Param("status") String status,@Param("createTimeBegin") String createTimeBegin,@Param("createTimeEnd") String createTimeEnd,@Param("createBy") String createBy);

    /**
     * 查询推荐文章列表
     */
    public List<CmsBlog> selectCmsBlogListRecommend(CmsBlog cmsBlog);

    /**
     * 按分类查询文章管理列表
     */
    public List<CmsBlog> selectCmsBlogListByTypeId(Long id);

    /**
     * 按标签查询文章管理列表
     */
    public List<CmsBlog> selectCmsBlogListByTagId(Long id);

    /**
     * 新增文章管理
     * 
     * @param cmsBlog 文章管理
     * @return 结果
     */
    public int insertCmsBlog(CmsBlog cmsBlog);

    /**
     * 修改文章管理
     * 
     * @param cmsBlog 文章管理
     * @return 结果
     */
    public int updateCmsBlog(CmsBlog cmsBlog);

    /**
     * 删除文章管理
     * 
     * @param id 文章管理主键
     * @return 结果
     */
    public int deleteCmsBlogById(Long id);

    /**
     * 批量删除文章管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCmsBlogByIds(Long[] ids);
}
