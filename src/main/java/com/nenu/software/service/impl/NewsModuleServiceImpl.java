package com.nenu.software.service.impl;

import com.nenu.software.common.entity.NewsModule;
import com.nenu.software.mapper.NewsModuleMapper;
import com.nenu.software.service.NewsModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author shanjz
 * @since 2018/6/25 11:36
 */
@Service("newsModuleService")
public class NewsModuleServiceImpl implements NewsModuleService {

    @Autowired
    NewsModuleMapper newsModuleMapper;

    @Override
    public void newNewsModule(NewsModule newsModule) throws Exception {
        newsModuleMapper.newNewsModule(newsModule);
    }

    @Override
    public void delById(int id) throws Exception {
        newsModuleMapper.delById(id);
    }

    @Override
    public void update(NewsModule newsModule) throws Exception {
        newsModuleMapper.update(newsModule);
    }

    @Override
    public NewsModule queryById(int id) throws Exception {
        return newsModuleMapper.queryById(id);
    }

    @Override
    public List<NewsModule> queryAll() throws Exception {
        return newsModuleMapper.queryAll();
    }
}
