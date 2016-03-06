package com.shandong.human.resource.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 首页控制器
 *
 * @author tyee.noprom@qq.com
 * Created by noprom on 2/4/16.
 */
@Controller
public class IndexController {

    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource";

    /**
     * 首页显示页面
     *
     * @param model model
     * @return 视图
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model) {
        return STATIC_PREFIX + "/index";
    }
}
