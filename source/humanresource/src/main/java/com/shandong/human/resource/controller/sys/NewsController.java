package com.shandong.human.resource.controller.sys;

import com.shandong.human.resource.domain.News;
import com.shandong.human.resource.service.sys.NewsService;
import com.shandong.human.resource.util.Constant;
import com.shandong.human.resource.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

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
    public static final String STATIC_PREFIX = "human-resource/sys/news";

    @Autowired
    private NewsService newsService;

    @RequestMapping(value = "/sys/news", method = RequestMethod.GET)
    String newsList(Model model, News news, HttpSession httpSession){

        List<News> newsList = newsService.newsList();
        model.addAttribute("newsList", newsList);
        return STATIC_PREFIX + "/list";
    }

    /**
     *
     * @param model
     * @param news
     * @param httpSession
     * @return
     */
    @RequestMapping(value = "/sys/news/add", method = RequestMethod.GET)
    public @ResponseBody
    Result newsAdd(Model model, News news, HttpSession httpSession){

        news.setUserId(10);
        Integer id = newsService.addNews(news);
        System.out.println("返回值为" + id);
        if (id > 0){
            return new Result(Result.Status.SUCCESS, Constant.REG_SUCCESS);
        } else {
            return new Result(Result.Status.ERROR, Constant.REG_FAIL);
        }
    }

    @RequestMapping(value = "/sys/news/addjsp", method = RequestMethod.GET)
    String newsAddjsp(Model model, News news, HttpSession httpSession){
        return STATIC_PREFIX + "/add";
    }
}
