package com.shandong.human.resource.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * CommonController
 * <p/>
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/8 上午11:24
 */
@Controller
public class CommonController {

    protected Logger logger = Logger.getLogger(getClass());

    //---------------------------------以下为测试部分代码!!!!!!!!!!!!------------------------

    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource";

    @Autowired
    //private UserService usertestService;

    /**
     * 登陆显示界面
     * Author: constantine <1194479264@qq.com>
     * Date: 16/3/8 上午11:24
     *
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return STATIC_PREFIX + "/logintest";
    }

    /**
     * 处理登陆请求
     * <p/>
     * Author: constantine <1194479264@qq.com>
     * Date: 16/3/8 上午11:24
     *
     * @return
     */
//    @RequestMapping(value = "/login", method = RequestMethod.POST)
//    public @ResponseBody
//    Result handleLogin(String username, String password) {
//        User loginUser = usertestService.login(username, password);
//        if (loginUser != null) {
//            return new Result(Result.Status.SUCCESS, Constant.LOGIN_SUCCESS);
//        } else {
//            return new Result(Result.Status.ERROR, Constant.LOGIN_FAIL);
//        }
//    }

    //---------------------------------以上为测试部分代码!!!!!!!!!!!!------------------------
}
