package com.shandong.human.resource.controller.home.auth;

import com.shandong.human.resource.common.AuthTree;
import com.shandong.human.resource.domain.Auth;
import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.service.sys.AuthService;
import com.shandong.human.resource.service.sys.RecordService;
import org.apache.http.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/14 10:11
 */
@Controller
public class AuthController {

    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource/home/auth";
    @Autowired
    private AuthService service;

    /**
     * @brief 获取权限树并转到添加权限页面
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/home/auth/add")
    public String toAddPage(HttpServletRequest request , HttpServletResponse response) {
        List<Auth> allAuth =service.selectAll();
        System.out.println("size:"+allAuth.size());
        AuthTree existAuth=new AuthTree(0,allAuth);
        request.setAttribute("existAuth",existAuth);
        return STATIC_PREFIX + "/add";
    }

    @RequestMapping(value = "/home/auth/add/submit")
    public void addAuth(HttpServletRequest request , HttpServletResponse response){
        Auth toInsert = new Auth();
        String name = (String)request.getAttribute("name");
        String url = (String)request.getAttribute("url");
        int pid = Integer.parseInt((String)request.getAttribute("pid"));
        int level =service.selectByID(pid).getLevel()+1;
        toInsert.setId(0);
        toInsert.setLevel(level);
        toInsert.setName(name);
        toInsert.setUrl(url);
        toInsert.setPid(pid);

        service.insertAuth(toInsert);
    }
}
