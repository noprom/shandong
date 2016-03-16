package com.shandong.human.resource.controller.sys.auth;

import com.shandong.human.resource.common.AuthTree;
import com.shandong.human.resource.controller.CommonController;
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
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Brief: 权限管理类
 * Author: syc
 * Date: 2016/3/15
 */
@RequestMapping("/sys/auth")
@Controller
public class AuthController extends CommonController {

    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource/sys/auth";
    @Autowired
    private AuthService service;

    /**
     * 获取权限树并转到添加权限页面
     *
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/add")
    public String toAddPage(HttpServletRequest request, HttpServletResponse response) {
        List<Auth> allAuth = service.selectAll();
        System.out.println("size:" + allAuth.size());
        AuthTree existAuth = new AuthTree(0, allAuth);
        request.setAttribute("existAuth", existAuth);
        return STATIC_PREFIX + "/add";
    }

    /**
     * 对提交的添加权限信息进行处理
     *
     * @param request
     * @param response
     * @throws IOException
     */
    @RequestMapping(value = "/add/submit")
    public void addAuth(Integer pid, String name, String url,
            HttpServletRequest request, HttpServletResponse response) throws IOException {
        Auth toInsert = new Auth();
        logger.debug(name + url + pid);

        int level = service.selectByID(pid).getLevel() + 1;
        toInsert.setId(0);
        toInsert.setLevel(level);
        toInsert.setName(name);
        toInsert.setUrl(url);
        toInsert.setPid(pid);

        service.insertAuth(toInsert);
        response.sendRedirect("/sys/auth/add");
    }

    /**
     * 转到删除权限页面
     *
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/delete")
    public String toDeletePage(HttpServletRequest request, HttpServletResponse response) {
        List<Auth> allAuth = service.selectAll();
        System.out.println("size:" + allAuth.size());
        AuthTree existAuth = new AuthTree(0, allAuth);
        request.setAttribute("existAuth", existAuth);
        return STATIC_PREFIX + "/delete";
    }

    /**
     * 根据ID删除指定权限及其子权限
     *
     * @param request
     * @param response
     * @throws IOException
     */

    @RequestMapping(value = "/delete/submit")
    public void deleteAuth(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id_s = request.getParameter("id");
        int id = Integer.parseInt(id_s);
        Auth root = service.selectByID(id);
        if (root == null || root.getLevel() == 0) {
            response.sendRedirect("/home/auth/delete");
            return;
        }

        List<Auth> allAuth = service.selectAll();
        AuthTree authTree = new AuthTree(root.getLevel(), allAuth);

        /*将树指针定位到目标节点*/
        Auth target;
        for (target = authTree.now();
             target != null && target.getId() != root.getId();
             authTree.gotoNext(), target = authTree.now())
            ;

        if (target == null) {
            response.sendRedirect("/sys/auth/delete");
            return;
        }

        /*删除其子节点*/
        AuthTree childs = authTree.childAuths();
        deleteAuthTree(childs);

        /*删除该节点*/
        service.deleteByID(target.getId());
        response.sendRedirect("/sys/auth/delete");
        return;
    }

    /**
     * 从数据库中删除传入的权限树所包含的该权限树等级的权限及其子权限
     *
     * @param tree 传入权限树
     */
    private void deleteAuthTree(AuthTree tree) {
        if (tree == null)
            return;
        Auth str = tree.now();
        while (str != null) {
            deleteAuthTree(tree.childAuths());
            service.deleteByID(str.getId());
            tree.gotoNext();
            str = tree.now();
        }
    }
}