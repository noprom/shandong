package com.shandong.human.resource.controller.sys.role;

import com.shandong.human.resource.controller.CommonController;
import com.shandong.human.resource.domain.Role;
import com.shandong.human.resource.domain.User;
import com.shandong.human.resource.domain.UserRole;
import com.shandong.human.resource.service.sys.RoleService;
import com.shandong.human.resource.service.sys.UserRoleService;
import com.shandong.human.resource.util.Pager;
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
public class RoleController{

    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource/sys/role";

    @Autowired
    private RoleService service;

    @RequestMapping(value = "/role/add", method = RequestMethod.POST)
    public void add(String name, HttpServletRequest request, HttpServletResponse response) {
        if(name == null ){
            try {
                response.sendRedirect("/404");
            } catch (IOException e) {
                e.printStackTrace();
            }
            return;
        }

        service.insertRole(name);
        try {
            response.sendRedirect("/sys/role");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/role/delete", method = RequestMethod.GET)
    public void delete(String id, HttpServletRequest request, HttpServletResponse response) {
        if(id == null ){
            try {
                response.sendRedirect("/404");
            } catch (IOException e) {
                e.printStackTrace();
            }
            return;
        }

        Integer iID = Integer.parseInt(id);
        if(iID == null){
            try {
                response.sendRedirect("/404");
            } catch (IOException e) {
                e.printStackTrace();
            }
            return;
        }

        service.deleteRole(iID);
        try {
            response.sendRedirect("/sys/role");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/role", method = RequestMethod.GET)
    public String toRolePage(String pageNum,
                             HttpServletRequest request, HttpServletResponse response) {
        int currentPage = 1;
        try {
            currentPage = Integer.parseInt(pageNum);
        } catch (Exception e) {
        }

        /*单页显示个数*/
        int pageSize = 3;
        Pager<Role> pager = new Pager<Role>(pageSize);
        pager.setCount(service.getCount());
        pager.setCurrentPage(currentPage);
        int offset = pager.getMaxSize() * (currentPage - 1);
        int size = pager.getMaxSize();
        pager.setData(service.selectByPos(offset, size));
        request.setAttribute("pager", pager);
        return STATIC_PREFIX + "/list";
    }
}