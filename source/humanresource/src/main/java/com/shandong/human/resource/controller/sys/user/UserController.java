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
import java.io.IOException;

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

    /**
     * 用户列表
     *
     * @param pageNum
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String toShowPage(String pageNum, HttpServletRequest request, HttpServletResponse response) {
        int currentPage = 1;
        try {
            currentPage = Integer.parseInt(pageNum);
        } catch (Exception e) {
        }

        /*单页显示个数*/
        int pageSize = 3;
        Pager<User> pager = new Pager<User>(pageSize);
        pager.setCount(service.getCount());
        pager.setCurrentPage(currentPage);
        int offset = pager.getMaxSize() * (currentPage - 1);
        int size = pager.getMaxSize();
        pager.setData(service.selectByPos(offset, size));
        request.setAttribute("pager", pager);
        return STATIC_PREFIX + "/list";
    }

    @RequestMapping(value = "/user/add", method = RequestMethod.POST)
    public void addUser(String username,String password,String type, HttpServletRequest request, HttpServletResponse response) {
        System.out.println(username+password+type);
        User toAdd = new User();
        toAdd.setUsername(username);
        toAdd.setPassword(password);
        toAdd.setType(Integer.parseInt(type));
        try {
            service.insertUser(toAdd);
            response.sendRedirect("/sys/user");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return;
    }
}
