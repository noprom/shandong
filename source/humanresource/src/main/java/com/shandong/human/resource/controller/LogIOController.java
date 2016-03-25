package com.shandong.human.resource.controller;

import com.shandong.human.resource.domain.*;
import com.shandong.human.resource.service.sys.AuthRoleService;
import com.shandong.human.resource.service.sys.AuthService;
import com.shandong.human.resource.service.sys.UserRoleService;
import com.shandong.human.resource.service.sys.UserService;
import com.shandong.human.resource.util.Constant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * 登入登出控制器
 *
 * @author syc<522560298@qq.com>
 */
@Controller
public class LogIOController {


    @Autowired
    UserService userService;

    @Autowired
    UserRoleService userRoleService;

    @Autowired
    AuthRoleService authRoleService;

    @Autowired
    AuthService authService;


    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource";


    /**
     * 转登录界面
     * @param model
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String toLoginPage(Model model) {
        return STATIC_PREFIX + "/login";
    }

    /**
     * 登录
     * @param userName
     * @param password
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public void login(String userName, String password,  HttpSession session,
                      Model model , HttpServletRequest request, HttpServletResponse response) {
        if(userName == null|| password == null){
            try {
                response.sendRedirect("/404");
            } catch (IOException e) {
                e.printStackTrace();
            }
            return;
        }

        User localUser = userService.selectByNamePwd(userName,password);
        if(localUser == null){
            try {
                response.sendRedirect("/404");
            } catch (IOException e) {
                e.printStackTrace();
            }
            return;
        }

        List<UserRole> roles = userRoleService.getRoleByUserID(localUser.getId());

        Set<Auth> auth = new HashSet<Auth>();
        for(UserRole r:roles){
            List<AuthRole> roleAuth = authRoleService.selectByRoleID(r.getRole_id());
            for(AuthRole c:roleAuth){
                Auth oneAuth = authService.selectByID(c.getAuth_id());
                if(oneAuth!=null){
                    auth.add(oneAuth);
                }
            }
        }
        if(auth.isEmpty())
            auth=null;

        session.setAttribute(Constant.LOGIN_USER,localUser);
        session.setAttribute("auth",auth);
        try {
            response.sendRedirect("/");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 登出
     *
     * @param model model
     * @return 视图
     */
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(Model model, HttpServletRequest request, HttpServletResponse response) {
        request.getSession().setAttribute("localUser",null);
        request.getSession().setAttribute("auth",null);
        return STATIC_PREFIX + "/index";
    }
}
