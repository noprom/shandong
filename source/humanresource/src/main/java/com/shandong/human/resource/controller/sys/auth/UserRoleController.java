package com.shandong.human.resource.controller.sys.auth;

import com.shandong.human.resource.controller.CommonController;
import com.shandong.human.resource.domain.Role;
import com.shandong.human.resource.domain.UserRole;
import com.shandong.human.resource.service.sys.AuthRoleService;
import com.shandong.human.resource.service.sys.AuthService;
import com.shandong.human.resource.service.sys.RoleService;
import com.shandong.human.resource.service.sys.UserRoleService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


/**
 * 用户角色控制器
 * <p>
 * Author: syc <522560298@qq.com>
 * Date: 3/16/16 下午2:15
 * <p>
 * Modified by noprom on 3/20/16.
 */
@RequestMapping("/sys")
@Controller
public class UserRoleController extends CommonController {

    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource/sys/userRole";

    @Autowired
    private RoleService roleService;

    @Autowired
    private UserRoleService userRoleService;

    /**
     * 转到用户角色设置页面
     *
     * @param uid      用户id
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/userRole/edit", method = RequestMethod.GET)
    public String toEditPage(@Param("uid") Integer uid, Model model,
                             HttpServletRequest request, HttpServletResponse response) {
        if(uid == null)
            return "/404";

        List<Role> allRole = roleService.selectAll();
        List<UserRole> hasRole = userRoleService.getRoleByUserID(uid);
        for (Role role : allRole) {
            logger.info(role.getName());
            if (roleIdInUserRole(role.getId(), hasRole)) {
                role.setHasRole(true);
            } else {
                role.setHasRole(false);
            }
        }
        model.addAttribute("hasRole", hasRole);
        model.addAttribute("allRole", allRole);
        model.addAttribute("user_id", uid);
        return STATIC_PREFIX + "/edit";
    }

    /**
     * 用户角色设置
     *
     * @param roles    新的角色id
     * @param user_id  用户id
     * @param request
     * @param response
     */
    @RequestMapping(value = "/userRole/edit/submit", method = RequestMethod.POST)
    public void submitHandle(String[] roles, String user_id, HttpServletRequest request, HttpServletResponse response) {
        if (user_id == null) {
            logger.debug("invalid user_id");
        }
        Integer user_id_i = Integer.parseInt(user_id);

        userRoleService.delectByUserID(user_id_i);
        for (int i = 0; i < roles.length; ++i) {
            if (roles[i] != null) {
                Integer role_id = Integer.parseInt(roles[i]);
                userRoleService.insertUserRole(user_id_i, role_id);
            }
        }
        try {
            response.sendRedirect("/sys/user");
        } catch (IOException e) {
            e.printStackTrace();
            try {
                response.sendRedirect("/404");
            } catch (IOException e1) {
                e1.printStackTrace();
            }
        }
    }

    /**
     * 判断一个roleId是否在一个角色列表中
     *
     * @param roleId
     * @param hasRole
     * @return
     */
    private Boolean roleIdInUserRole(Integer roleId, List<UserRole> hasRole) {
        for (UserRole uRole : hasRole) {
            if (uRole.getRole_id().equals(roleId)) {
                return true;
            }
        }
        return false;
    }
}