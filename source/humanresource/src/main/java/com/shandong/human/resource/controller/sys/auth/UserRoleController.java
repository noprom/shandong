package com.shandong.human.resource.controller.sys.auth;

import com.shandong.human.resource.controller.CommonController;
import com.shandong.human.resource.domain.Role;
import com.shandong.human.resource.domain.UserRole;
import com.shandong.human.resource.service.sys.AuthRoleService;
import com.shandong.human.resource.service.sys.AuthService;
import com.shandong.human.resource.service.sys.RoleService;
import com.shandong.human.resource.service.sys.UserRoleService;
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
public class UserRoleController extends CommonController{

    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource/sys/userRole";

    @Autowired
    private RoleService roleService;

    @Autowired
    private UserRoleService userRoleService;


    /**
     * @brief 转到用户角色设置页面
     * @param user_id 用户id
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/userRole/edit", method = RequestMethod.GET)
    public String toEditPage(String user_id, HttpServletRequest request, HttpServletResponse response) {

        Integer user_id_i = Integer.parseInt(user_id);
        List<Role> allRole = roleService.selectAll();
        List<UserRole> hasRole = userRoleService.getRoleByUserID(user_id_i);

        request.setAttribute("hasRole",hasRole);
        request.setAttribute("allRole",allRole);
        request.setAttribute("user_id",user_id);
        return STATIC_PREFIX + "/edit";
    }

    /**
     * @brief 用户角色设置
     * @param roles 新的角色id
     * @param user_id 用户id
     * @param request
     * @param response
     */
    @RequestMapping(value = "/userRole/edit/submit", method = RequestMethod.POST)
    public void submitHandle(String[] roles, String user_id, HttpServletRequest request, HttpServletResponse response) {
        if(user_id == null){
            logger.debug("invalid user_id");
        }
        Integer user_id_i = Integer.parseInt(user_id);

        userRoleService.delectByUserID(user_id_i);
        for(int i=0;i<roles.length;++i){
            if(roles[i]!=null){
                Integer role_id = Integer.parseInt(roles[i]);
                userRoleService.insertUserRole(user_id_i,role_id);
            }
        }
        //// TODO: 3/17/16 完成后跳转 
    }
}