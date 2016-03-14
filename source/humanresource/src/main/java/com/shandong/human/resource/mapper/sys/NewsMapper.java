package com.shandong.human.resource.mapper.sys;

import com.shandong.human.resource.domain.News;

import java.util.List;

/**
 * 通知Mapper
 * <p/>
 * Author: helin <helin199210@icloud.com>
 * Time: 16/3/11 下午1:47
 */
public interface NewsMapper {
    /**
     * 新增通知
     *
     * @param news
     * @return news id
     */
    int addNews(News news);

    List<News> newsList();

    void deleteNewsById(Integer id);
}
