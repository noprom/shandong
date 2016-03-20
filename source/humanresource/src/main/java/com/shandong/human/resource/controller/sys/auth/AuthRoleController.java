package com.shandong.human.resource.controller.sys.auth;

import com.shandong.human.resource.common.AuthTree;
import com.shandong.human.resource.domain.Auth;
import com.shandong.human.resource.domain.AuthRole;
import com.shandong.human.resource.service.sys.AuthRoleService;
import com.shandong.human.resource.service.sys.AuthService;
import com.shandong.human.resource.util.AuthUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * 权限控制器
 * <p>
 * Author: syc <522560298@qq.com>
 * Date: 3/16/16 下午2:15
 * <p>
 * Modified by noprom on 3/20/16.
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
     * 转到角色权限设置页面
     *
     * @param role_id  角色id
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/authRole/edit", method = RequestMethod.GET)
    public String toEditPage(Integer role_id, Model model,
                             HttpServletRequest request, HttpServletResponse response) {
        List<Auth> allAuth = authService.selectAll();
        //AuthTree authTree = new AuthTree(0, allAuth);
        //List<Auth> existAuth = AuthTree.toList(authTree);

        role_id = role_id == null ? 0 : role_id;
        List<AuthRole> existAuthRole = authRoleService.selectByRoleID(role_id);

        // 遍历所有权限设置可见性
        for (Auth auth : allAuth) {
            if (authInAuthRole(auth.getId(), existAuthRole)) {
                auth.setHasAuth(true);
            } else {
                auth.setHasAuth(false);
            }
        }
        AuthUtil au = new AuthUtil();
        List<Auth> existAuth = au.getAuthList(allAuth, 0);
        // 显示到页面
        model.addAttribute("existAuth", existAuth);
        model.addAttribute("existAuthRole", existAuthRole);
        return STATIC_PREFIX + "/edit";
    }

    /**
     * 角色权限设置
     *
     * @param role_id  待处理角色id
     * @param auths    传入权限
     * @param request
     * @param response
     */
    @RequestMapping(value = "/authRole/edit/submit", method = RequestMethod.POST)
    public void submitHandle(Integer role_id, List<Integer> auths, HttpServletRequest request, HttpServletResponse response) {
        authRoleService.deleteByRoleID(role_id);
        for (Integer r : auths) {
            authRoleService.insertAuthRole(r, role_id);
        }
    }

    /**
     * 判断某个权限是否在已经存在的角色列表中
     *
     * @param authId        权限id
     * @param existAuthRole 已经存在的权限角色列表
     * @return
     */
    private Boolean authInAuthRole(Integer authId, List<AuthRole> existAuthRole) {
        for (AuthRole authRole : existAuthRole) {
            if (authRole.getAuth_id().equals(authId)) {
                return true;
            }
        }
        return false;
    }

    private List<Auth> transformAuth(List<Auth> allAuth, Integer pid, Integer level) {
        List<Auth> newAuth = new ArrayList<Auth>();
        for (Auth auth : allAuth) {
            if (auth.getPid().equals(pid)) {
                newAuth.add(auth);
                transformAuth(newAuth, auth.getId(), level + 1);
            }
        }
        return newAuth;
    }
}