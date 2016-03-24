package com.shandong.human.resource.controller.home.company;

import com.shandong.human.resource.domain.Area;
import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.CompanyData;
import com.shandong.human.resource.service.home.AreaService;
import com.shandong.human.resource.service.home.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.nimbus.NimbusStyle;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

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
    @Autowired
    private CompanyService companyService;


    //获取所有的城市
    //获取数据显示页面
    @RequestMapping(value = "/home/company/add",method = RequestMethod.GET)
    public String getProvince(Model model) {
        ArrayList<Area> list = areaService.getAllCity();
        //刚开始打开页面时显示济南市的所有县
        ArrayList<Area> listCity=areaService.getAllAreaById(170);
        model.addAttribute("editResult", list);
        model.addAttribute("editResultCity", listCity);
        return STATIC_PREFIX + "/add";
    }

    //获取所有的地区
    //获取数据显示页面
    @RequestMapping(value = "/home/company/add/{id}", method = RequestMethod.GET)
    @ResponseBody
    public ArrayList<Area> getAllArea(@PathVariable("id") Integer id) {
        //获取地区
        System.out.println(id);
        ArrayList<Area> list = areaService.getAllAreaById(id);
        return list;
    }

    //保存企业信息
    //处理修改请求
    @RequestMapping(value = "/home/company/add/submit",method = RequestMethod.POST)
    @ResponseBody
    public Map saveMessage(Company company) {
        Map map=new HashMap();
        companyService.setCompanyInfo(company);
        System.out.println("company");
        System.out.println(company);
        map.put("success","success");
        return map;
//        company.setProvince_id(0);
//        company.setCity_id(city_id);
//        System.out.println(city_id);
//        company.setArea_id(area_id);
//        System.out.println(area_id);
//        company.setAddress(address);
//        System.out.println(address);
//        company.setBusiness(business);
//        System.out.println(business);
//        company.setCode(code);
//        System.out.println(code);
//        company.setContact(contact);
//        System.out.println(contact);
//        company.setEmail(email);
//        System.out.println(email);
//        company.setName(province_id);
//        System.out.println(province_id);
//        company.setFax(fax);
//        System.out.println(fax);
//        company.setPhone(phone);
//        System.out.println(phone);
//        company.setZipcode(zipcode);
//        System.out.println(zipcode);
//        System.out.println(phone);
//        return STATIC_PREFIX + "/add";
    }

    //企业信息修改
    //获取修改页面
    @RequestMapping(value = "/home/company/edit",method = RequestMethod.GET)
    public String getProvinceEdit(Model model) {
        ArrayList<Area> list = areaService.getAllCity();
        //刚开始打开页面时显示济南市的所有县
        ArrayList<Area> listCity=areaService.getAllAreaById(170);
        model.addAttribute("editResult", list);
        model.addAttribute("editResultCity", listCity);
        return STATIC_PREFIX + "/edit";
    }

    //获取所有的地区
    //获得页面信息
    @RequestMapping(value = "/home/company/edit/{id}", method = RequestMethod.GET)
    @ResponseBody
    public ArrayList<Area> getAllAreaEdit(@PathVariable("id") Integer id) {
        System.out.println(id);
        ArrayList<Area> list = areaService.getAllAreaById(id);
        return list;
    }

}
