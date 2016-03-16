package com.shandong.human.resource.controller.sys.auth;

import com.shandong.human.resource.common.AuthTree;
import com.shandong.human.resource.domain.Auth;
import com.shandong.human.resource.domain.AuthRole;
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
public class AuthRoleController {

    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource/sys/authRole";

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
    @RequestMapping(value = "/authRole/edit", method = RequestMethod.GET)
    public String toEditPage(Integer role_id, HttpServletRequest request, HttpServletResponse response) {
        List<Auth> allAuth = authService.selectAll();
        AuthTree existAuth = new AuthTree(0, allAuth);

        List<AuthRole> existAuthRole = authRoleService.selectByRoleID(role_id.intValue());

        request.setAttribute("existAuth", existAuth);
        request.setAttribute("existAuthRole", existAuthRole);
        return STATIC_PREFIX + "/edit";
    }

    /**
     * @brief 角色权限设置
     * @param role_id 待处理角色id
     * @param auths 传入权限
     * @param request
     * @param response
     */
    @RequestMapping(value = "/authRole/edit/submit", method = RequestMethod.POST)
    public void submitHandle(Integer role_id, List<Integer> auths, HttpServletRequest request, HttpServletResponse response) {
        authRoleService.deleteByRoleID(role_id);
        for(Integer r:auths){
            authRoleService.insertAuthRole(r,role_id);
        }
    }
}