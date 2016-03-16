package com.shandong.human.resource.controller.home.auth;

import com.shandong.human.resource.common.AuthTree;
import com.shandong.human.resource.domain.Auth;
import com.shandong.human.resource.domain.AuthRole;
import com.shandong.human.resource.service.sys.AuthRoleService;
import com.shandong.human.resource.service.sys.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.connection.convert.ListConverter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by syc on 3/16/16.
 */
@Controller
public class AuthRoleController {

    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource/home/authRole";

    @Autowired
    private AuthService authService;

    @Autowired
    private AuthRoleService authRoleService;


    @RequestMapping(value = "/home/authRole/edit")
    public String toEditPage(Integer role_id, HttpServletRequest request, HttpServletResponse response) {
        List<Auth> allAuth = authService.selectAll();
        AuthTree existAuth = new AuthTree(0, allAuth);

        List<AuthRole> existAuthRole = authRoleService.selectByRoleID(role_id.intValue());

        request.setAttribute("existAuth", existAuth);
        request.setAttribute("existAuthRole", existAuthRole);
        return STATIC_PREFIX + "/edit";
    }

    @RequestMapping(value = "/home/authRole/edit/submit")
    public void submitHandle(Integer role_id, List<Integer> auths, HttpServletRequest request, HttpServletResponse response) {
        authRoleService.deleteByRoleID(role_id);
        for(Integer r:auths){
            authRoleService.insertAuthRole(r,role_id);
        }
    }
}