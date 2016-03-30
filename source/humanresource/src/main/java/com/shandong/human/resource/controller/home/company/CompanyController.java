package com.shandong.human.resource.controller.home.company;

import com.shandong.human.resource.domain.Area;
import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.CompanyData;
import com.shandong.human.resource.domain.User;
import com.shandong.human.resource.service.home.AreaService;
import com.shandong.human.resource.service.home.CompanyService;
import com.shandong.human.resource.util.Constant;
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
        System.out.println(id.intValue());
        ArrayList<Area> list = areaService.getAllAreaById(id.intValue());
        return list;
    }

    //保存企业信息
    //处理修改请求
    @RequestMapping(value = "/home/company/add/submit",method = RequestMethod.POST)
    @ResponseBody
    public Map saveMessage(Company company,HttpSession session) {
        Map map=new HashMap();
        User user=(User)session.getAttribute(Constant.LOGIN_USER);
        int id=user.getId();
        //检查数据是否已经插入到数据库中
        ArrayList<Company> companies=companyService.isNull(id);
        if(companies.size()>0)
        {
            map.put("success","exit");
            return map;
        }
        company.setId(id);
        companyService.setCompanyInfo(company);
        map.put("success","success");
        return map;
    }

    //企业信息修改
    //获取修改页面
    @RequestMapping(value = "/home/company/edit",method = RequestMethod.GET)
    public String getProvinceEdit(Model model,HttpSession session,HttpServletResponse response)throws IOException {
        User user=(User)session.getAttribute(Constant.LOGIN_USER);
        int id=user.getId();
        ArrayList<Company> companies=companyService.isNull(id);
        if(companies.size()==0)
        {
            response.sendRedirect("/home/company/add");
            return null;
        }
        Company company=companyService.getCompanyById(id);
        //id是主键，数组只有一个元素
        Area cityArea=areaService.getById(company.getCity_id());
        Area areaArea=areaService.getById(company.getArea_id());
        ArrayList<Area> listCity = areaService.getAllCity();
        ArrayList<Area> listArea=areaService.getAllAreaById(company.getCity_id());
        model.addAttribute("listCity", listCity);
        model.addAttribute("listArea", listArea);
        model.addAttribute("company",company);
        model.addAttribute("cityArea",cityArea);
        model.addAttribute("areaArea",areaArea);
        return STATIC_PREFIX + "/edit";
    }


    //保存修改信息
    @RequestMapping(value = "/home/company/edit", method = RequestMethod.POST)
    @ResponseBody
    public Map saveInfo(Company company,HttpSession session) {
        Map map=new HashMap();
        User user=(User)session.getAttribute(Constant.LOGIN_USER);
        int id=user.getId();
        //检查数据是否已经插入到数据库中
        ArrayList<Company> companies=companyService.isNull(id);
        if(companies.size()==0)
        {
            map.put("success","noInfo");
            return map;
        }
        company.setId(id);
        companyService.updateCompanyInfo(company);
        map.put("success","success");
        return map;
    }
}
