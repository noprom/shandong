package com.shandong.human.resource.service.impl.sys;

import com.shandong.human.resource.domain.News;
import com.shandong.human.resource.mapper.sys.NewsMapper;
import com.shandong.human.resource.service.sys.NewsService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

/**
 * Author: helin <helin199210@icloud.com>
 * Time: 16/3/11 下午1:47
 */
@Service
@Transactional(isolation = Isolation.DEFAULT, rollbackFor = Exception.class)
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsMapper newsMapper;

    /**
     * 新增通知
     *
     * @param news News
     * @retrun news id
     */
    public int addNews(News news) {
        return newsMapper.addNews(news);
    }

    public List<News> newsList() {
        return newsMapper.newsList();
    }

    public void deleteNewsById(Integer id) {
        newsMapper.deleteNewsById(id);
    }

    public News selectNewsById(int id) {
        return newsMapper.selectNewsById(id);
    }

    public int editNewsById(News news) {
        return newsMapper.editNewsById(news);
    }
}
