package com.shandong.human.resource.controller.sys;

import com.shandong.human.resource.domain.News;
import com.shandong.human.resource.service.sys.NewsService;
import com.shandong.human.resource.util.Constant;
import com.shandong.human.resource.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 通知控制器
 * 包括:
 * 增加,删除,修改,查询通知
 * <p/>
 * Author: helin <helin199210@icloud.com>
 * Time: 16/3/11 下午1:45
 */
@Controller
public class NewsController {

    //静态资源前缀
    public static final String STATIC_PREFIX = "human-resource/sys/news";

    @Autowired
    private NewsService newsService;

    /**
     * @param model
     * @param news
     * @param httpSession
     * @return
     */
    @RequestMapping(value = "/sys/news", method = RequestMethod.GET)
    String newsList(Model model, News news, HttpSession httpSession) {

        List<News> newsList = newsService.newsList();
        model.addAttribute("newsList", newsList);
        return STATIC_PREFIX + "/list";

    }

    /**
     * @param model
     * @param news
     * @param httpSession
     * @return
     */
    @RequestMapping(value = "/sys/news/add", method = RequestMethod.GET)
    public
    @ResponseBody
    Result newsAdd(Model model, News news, HttpSession httpSession) {

        news.setUserId(10);
        Integer id = newsService.addNews(news);

        if (id >= 0) {
            return new Result(Result.Status.SUCCESS, Constant.REG_SUCCESS);
        } else {
            return new Result(Result.Status.ERROR, Constant.REG_FAIL);
        }
    }

    /**
     * @param model
     * @param news
     * @param httpSession
     * @return
     */
    @RequestMapping(value = "/sys/news/addjsp", method = RequestMethod.GET)
    String newsAddjsp(Model model, News news, HttpSession httpSession) {
        return STATIC_PREFIX + "/add";
    }

    /**
     * @param model
     * @param httpSession
     * @param request
     * @return
     */
    @RequestMapping(value = "sys/news/delete/{id}", method = RequestMethod.GET)
    String newsDelete(@PathVariable("id") Integer id, Model model, HttpSession httpSession, HttpServletRequest request) {

        newsService.deleteNewsById(id);

        List<News> newsList = newsService.newsList();
        model.addAttribute("newsList", newsList);
        return STATIC_PREFIX + "/list";
    }


    /**
     * @param httpSession
     * @param request
     * @return
     */
    @RequestMapping(value = "sys/news/edit/{id}", method = RequestMethod.GET)
    String newsEditPage(@PathVariable("id") Integer id, HttpSession httpSession, HttpServletRequest request) {
        News news = newsService.selectNewsById(id);
        httpSession.setAttribute("newToEdit", news);
        return STATIC_PREFIX + "/edit";
    }

    /**
     * @param model
     * @param request
     * @return
     */
    @RequestMapping(value = "sys/news/edit", method = RequestMethod.POST)
    String newsEdit(Model model, News news, HttpSession httpSession, HttpServletRequest request) {
        Integer id = newsService.editNewsById(news);
        System.out.println(news.getId().toString());
        System.out.println(news.getTitle());
        List<News> newsList = newsService.newsList();
        model.addAttribute("newsList", newsList);
        return STATIC_PREFIX + "/list";
    }

}
