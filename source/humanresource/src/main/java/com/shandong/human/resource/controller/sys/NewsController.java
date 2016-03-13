package com.shandong.human.resource.controller.sys;

import com.shandong.human.resource.domain.News;
import com.shandong.human.resource.service.sys.NewsService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.util.List;
import javax.servlet.http.HttpSession;

/**
 * 通知控制器
 * 包括:
 * 增加,删除,修改,查询通知
 *
 * Author: helin <helin199210@icloud.com>
 * Time: 16/3/11 下午1:45
 */
@Controller
public class NewsController {

    //静态资源前缀
    public static final String STATIC_PREFIX = "human-resource/";

    @Autowired
    private NewsService newsService;

    @RequestMapping(value = "/sys/news", method = RequestMethod.GET)
    String newsList(Model model, News news, HttpSession httpSession){

        List<News> newsList = newsService.newsList();
        model.addAttribute("newsList", newsList);
        return STATIC_PREFIX + "news/list";
    }
}
