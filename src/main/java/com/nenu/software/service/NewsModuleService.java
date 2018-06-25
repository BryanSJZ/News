package com.nenu.software.service;

import com.nenu.software.common.entity.NewsModule;

import java.util.List;

/**
 * @author shanjz
 * @since 2018/6/25 11:11
 */
public interface NewsModuleService {
    /**
     * 新增模块
     * @param newsModule 模块
     * @throws Exception 异常
     */
    public void newNewsModule(NewsModule newsModule) throws Exception;

    /**
     * 删除
     * @param id id
     * @throws Exception 异常
     */
    public void delById(int id) throws Exception;

    /**
     * 改
     * @param newsModule 模块
     * @throws Exception 异常
     */
    public void update(NewsModule newsModule) throws Exception;

    /**
     * 查
     * @param id ID
     * @return 模块
     * @throws Exception 异常
     */
    public NewsModule queryById(int id) throws Exception;

    /**
     * 查
     * @return 模块列表
     * @throws Exception 异常
     */
    public List<NewsModule> queryAll() throws Exception;
}
