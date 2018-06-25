package com.nenu.software.mapper;

import com.nenu.software.common.entity.News;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author shanjz
 * @since 2018/6/25 11:10
 */
@Repository
public interface NewsMapper {
    /**
     * 新增新闻
     * @param news 新闻
     * @throws Exception 异常
     */
    public void newNews(News news) throws Exception;

    /**
     * 删除
     * @param id id
     * @throws Exception 异常
     */
    public void delById(int id) throws Exception;

    /**
     * 改
     * @param news 新闻
     * @throws Exception 异常
     */
    public void update(News news) throws Exception;

    /**
     * 查
     * @param id ID
     * @return 新闻
     * @throws Exception 异常
     */
    public News queryById(int id) throws Exception;

    /**
     * 查
     * @return 新闻列表
     * @throws Exception 异常
     */
    public List<News> queryAll() throws Exception;

    /**
     * 根据类型查
     * @param module 类型
     * @return 列表
     * @throws Exception 异常
     */
    public List<News> queryByModule(int module) throws Exception;
}
