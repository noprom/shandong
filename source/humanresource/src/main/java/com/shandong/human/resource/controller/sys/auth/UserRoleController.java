package com.shandong.human.resource.controller.sys.auth;

import com.shandong.human.resource.service.sys.AuthRoleService;
import com.shandong.human.resource.service.sys.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;


/**
 * Created by syc on 3/16/16.
 */
@RequestMapping("/sys")
@Controller
public class UserRoleController {

    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource/sys/userRole";

    @Autowired
    private AuthService authService;

    @Autowired
    private AuthRoleService authRoleService;


    /**
     * @brief 转到角色权限设置页面
     * @param role_id 角色id
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/userRole/edit", method = RequestMethod.GET)
    public String toEditPage(Integer role_id, HttpServletRequest request, HttpServletResponse response) {
        return STATIC_PREFIX + "/edit";
    }

    /**
     * @brief 角色权限设置
     * @param role_id 待处理角色id
     * @param auths 传入权限
     * @param request
     * @param response
     */
    @RequestMapping(value = "/userRole/edit/submit", method = RequestMethod.POST)
    public void submitHandle(Integer role_id, List<Integer> auths, HttpServletRequest request, HttpServletResponse response) {

    }
}