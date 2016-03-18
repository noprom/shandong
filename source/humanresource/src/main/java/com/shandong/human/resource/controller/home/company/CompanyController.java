package com.shandong.human.resource.controller.home.company;

import com.shandong.human.resource.domain.Area;
import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.CompanyData;
import com.shandong.human.resource.service.home.AreaService;
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
    //获取所有的城市
    @RequestMapping(value = "/home/company/add",method = RequestMethod.GET)
    public String getProvince(Model model) {
        ArrayList<Area> list = areaService.getAllCity();
//        刚开始打开页面时显示济南市的所有县
        ArrayList<Area> listCity=areaService.getAllAreaById(170);
        model.addAttribute("editResult", list);
        model.addAttribute("editResultCity", listCity);
        return STATIC_PREFIX + "/add";
    }
    //获取所有的地区
    @RequestMapping(value = "/home/company/add/{id}", method = RequestMethod.GET)
    @ResponseBody
    public ArrayList<Area> getAllArea(@PathVariable("id") Integer id) {
//获取地区
        ArrayList<Area> list = areaService.getAllAreaById(id);
        return list;
    }
    //保存企业信息
    @RequestMapping(value = "/home/company/add/submit",method = RequestMethod.POST)
    public String saveMessage(String province_id,int city_id,int area_id,String address,String code,String name,String business,String contact,
                              String zipcode,String phone,String fax,String email ,Model model) {
        Company company=new Company();
        company.setProvince_id(0);
        company.setCity_id(city_id);
        company.setArea_id(area_id);
        company.setAddress(address);
        company.setBusiness(business);
        company.setCode(code);
        company.setContact(contact);
        company.setEmail(email);
        company.setName(province_id);
        company.setFax(fax);
        company.setPhone(phone);
        company.setZipcode(zipcode);
        System.out.println(province_id);
        System.out.println(phone);
        return STATIC_PREFIX + "/add";
    }

}
