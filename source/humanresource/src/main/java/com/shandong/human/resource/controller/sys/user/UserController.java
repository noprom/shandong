package com.shandong.human.resource.controller.sys.user;

import com.shandong.human.resource.domain.User;
import com.shandong.human.resource.service.home.AreaService;
import com.shandong.human.resource.service.sys.AuthRoleService;
import com.shandong.human.resource.service.sys.RoleService;
import com.shandong.human.resource.service.sys.UserRoleService;
import com.shandong.human.resource.service.sys.UserService;
import com.shandong.human.resource.util.Constant;
import com.shandong.human.resource.util.Pager;
import com.shandong.human.resource.util.Result;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;

/**
 * 用户控制器类
 * <p>
 * Author: syc <522560298@qq.com>
 * Date: 3/19/16 下午2:15
 */
@RequestMapping("/sys")
@Controller
public class UserController {
    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource/sys/user";

    protected Logger logger = Logger.getLogger(getClass());

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private AreaService areaService;

    @Autowired
    private UserRoleService userRoleService;

    /**
     * 用户列表
     *
     * @param pageNum
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String toShowPage(String pageNum, Model model,
                             HttpServletRequest request, HttpServletResponse response) {
        int currentPage = 1;
        try {
            currentPage = Integer.parseInt(pageNum);
        } catch (Exception e) {
        }

        /*单页显示个数*/
        int pageSize = 3;
        Pager<User> pager = new Pager<User>(pageSize);
        pager.setCount(userService.getCount());
        pager.setCurrentPage(currentPage);
        int offset = pager.getMaxSize() * (currentPage - 1);
        int size = pager.getMaxSize();
        pager.setData(userService.selectByPos(offset, size));

        model.addAttribute("pager", pager);
        model.addAttribute("cityList", areaService.getAllCity());
        model.addAttribute("roleList", roleService.selectAll());

        return STATIC_PREFIX + "/list";
    }

    /**
     * 新增用户
     *
     * @param user
     * @param request
     * @param response
     */
    @RequestMapping(value = "/user/add", method = RequestMethod.POST)
    public
    @ResponseBody
    Result addUser(@Valid User user, Integer role, BindingResult result,
                   HttpServletRequest request, HttpServletResponse response) {
        if (result.hasErrors() || role == null) {
            return new Result(Result.Status.ERROR, Constant.USERNAME_ILLEGAL);
        }

        Integer uid = userService.insertUser(user);
        if (uid > 0) {
            Integer check = userRoleService.insertUserRole(user.getId(), role);
            if (check > 0) {
                return new Result(Result.Status.SUCCESS, Constant.DEAL_SUCCESS);
            } else {
                return new Result(Result.Status.ERROR, Constant.DEAL_FAIL);
            }
        } else {
            return new Result(Result.Status.ERROR, Constant.DEAL_FAIL);
        }
    }

    /**
     * 删除用户
     *
     * @param uid
     * @param request
     * @param response
     */
    @RequestMapping(value = "/user/delete", method = RequestMethod.GET)
    public void deleteUser(Integer uid, HttpServletRequest request, HttpServletResponse response) {
        try {
            userService.deleteByID(uid);
            response.sendRedirect("/sys/user");
        } catch (IOException e) {
            try {
                response.sendRedirect("/404");
            } catch (IOException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        }
    }
}
