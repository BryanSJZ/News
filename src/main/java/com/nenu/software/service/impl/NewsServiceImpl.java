package com.nenu.software.service.impl;

import com.nenu.software.common.entity.News;
import com.nenu.software.mapper.NewsMapper;
import com.nenu.software.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author shanjz
 * @since 2018/6/25 11:36
 */
@Service("newsService")
public class NewsServiceImpl implements NewsService {

    @Autowired
    NewsMapper newsMapper;

    @Override
    public void newNews(News news) throws Exception {
        newsMapper.newNews(news);
    }

    @Override
    public void delById(int id) throws Exception {
        newsMapper.delById(id);
    }

    @Override
    public void update(News news) throws Exception {
        newsMapper.update(news);
    }

    @Override
    public News queryById(int id) throws Exception {
        return newsMapper.queryById(id);
    }

    @Override
    public List<News> queryAll() throws Exception {
        return newsMapper.queryAll();
    }

    @Override
    public List<News> queryByModule(int module) throws Exception {
        return newsMapper.queryByModule(module);
    }
}
