package com.shandong.human.resource.controller.home.data;

import com.shandong.human.resource.domain.Area;
import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.service.home.AreaService;
import com.shandong.human.resource.service.home.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/14 10:11
 */
@Controller
public class DataController {
    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource/home/data";
    @Autowired
    private AreaService areaService;
    @Autowired
    private CompanyService companyService;


    //获取所有的城市
    //获取数据显示页面
    @RequestMapping(value = "/home/data/add",method = RequestMethod.GET)
    public String add(Model model) {
//        ArrayList<Area> list = areaService.getAllCity();
////        刚开始打开页面时显示济南市的所有县
//        ArrayList<Area> listCity=areaService.getAllAreaById(170);
//        model.addAttribute("editResult", list);
//        model.addAttribute("editResultCity", listCity);
        return STATIC_PREFIX + "/add";
    }


    //获取修改页面
    @RequestMapping(value = "/home/data/query",method = RequestMethod.GET)
    public String query(Model model) {
//        ArrayList<Area> list = areaService.getAllCity();
////        刚开始打开页面时显示济南市的所有县
//        ArrayList<Area> listCity=areaService.getAllAreaById(170);
//        model.addAttribute("editResult", list);
//        model.addAttribute("editResultCity", listCity);
        return STATIC_PREFIX + "/query";
    }
    //获取所有的地区
    //获取数据显示页面
    @RequestMapping(value = "/home/data/add/{id}", method = RequestMethod.GET)
    @ResponseBody
    public ArrayList<Area> getAllArea(@PathVariable("id") Integer id) {
        //获取地区
        System.out.println(id);
        ArrayList<Area> list = areaService.getAllAreaById(id);
        return list;
    }

    //保存企业信息
    //获取图形显示页面
    @RequestMapping(value = "/home/data/add/submit",method = RequestMethod.POST)
    @ResponseBody
    public Map saveMessage(Company company) {
        Map map = new HashMap();
//       companyService.setCompanyInfo(company);
//       System.out.println("company");
//       System.out.println(company);
//       map.put("success", "success");
        return map;
    }

}
