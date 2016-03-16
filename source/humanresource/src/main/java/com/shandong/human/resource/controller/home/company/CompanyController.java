package com.shandong.human.resource.controller.home.company;

import com.shandong.human.resource.domain.Area;
import com.shandong.human.resource.service.home.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;

/**
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/14 10:11
 */
@Controller
public class CompanyController {

    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource/home/company";
    @Autowired
    private AreaService areaService;

    @RequestMapping(value = "/home/company/edit",method = RequestMethod.GET)
    public String getProvince(Model model) {
        ArrayList<Area> list = areaService.getAllProvince();
        model.addAttribute("editResult", list);
        return STATIC_PREFIX + "/edit";
    }
}
