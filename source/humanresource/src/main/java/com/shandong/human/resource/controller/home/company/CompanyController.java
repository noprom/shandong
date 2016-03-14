package com.shandong.human.resource.controller.home.company;

import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.CompanyData;
import com.shandong.human.resource.service.sys.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
    private RecordService recordService;

    @RequestMapping(value = "/home/company/add", method = RequestMethod.GET)
    public String record(Model model) {
       /* ArrayList<Company> list = recordService.getAllCompany();
        model.addAttribute("recordResult", list);*/

        return STATIC_PREFIX + "/add";
    }
    @RequestMapping(value = "/home/company/edit", method = RequestMethod.GET)
    public String record1(Model model) {
        ArrayList<Company> list = recordService.getAllCompany();
        System.out.println(list.size());
        for(Company comp:list)
        {
            System.out.println(comp.getAddress());
        }
        model.addAttribute("recordResult", list);

        return STATIC_PREFIX + "/edit";
    }

}
