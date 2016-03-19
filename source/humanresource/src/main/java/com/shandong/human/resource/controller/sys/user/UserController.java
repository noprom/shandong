package com.shandong.human.resource.controller.sys.user;

import com.shandong.human.resource.domain.User;
import com.shandong.human.resource.service.sys.UserService;
import com.shandong.human.resource.util.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by syc on 3/19/16.
 */

@RequestMapping("/sys")
@Controller
public class UserController {
    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource/sys/user";

    @Autowired
    UserService service;

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String toShowPage(String pageNum, HttpServletRequest request, HttpServletResponse response) {
        int currentPage = 1;
        try {
            currentPage = Integer.parseInt(pageNum);
        }catch (Exception e){
        }
        /*单页显示个数*/
        int pageSize = 10;

        Pager<User> pageParam = new Pager<User>(pageSize);
        pageParam.setCount(service.getCount());
        pageParam.setCurrentPage(currentPage);
        int offset = pageParam.getMaxSize()*(currentPage-1);
        int size = pageParam.getMaxSize();
        pageParam.setData(service.selectByPos(offset,size));
        request.setAttribute("pageParam",pageParam);
        return STATIC_PREFIX + "/show";
    }
}
