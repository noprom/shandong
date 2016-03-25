package com.shandong.human.resource.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * 错误页控制器
 *
 * @author SYC 522560298@qq.com
 * Created by SYC on 3/25/16.
 */
@Controller
public class ErrorController {


    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource";

    /**
     * 错误页显示页面
     *
     * @param model model
     * @return 视图
     */
    @RequestMapping(value = "/error", method = RequestMethod.GET)
    public String error(Model model , HttpServletRequest request) {
        String error = (String) request.getAttribute("error");
        if(error==null){
            request.setAttribute("error","未指定错误");
        }
        else{
            request.setAttribute("error",error);
        }
        return STATIC_PREFIX + "/error";
    }
}
