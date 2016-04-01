package com.shandong.human.resource.controller.home.company;

import com.shandong.human.resource.domain.*;
import com.shandong.human.resource.service.home.AreaService;
import com.shandong.human.resource.service.home.CompanyService;
import com.shandong.human.resource.service.home.IndustryTypeService;
import com.shandong.human.resource.util.Constant;
import com.shandong.human.resource.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.nimbus.NimbusStyle;
import javax.validation.Valid;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 公司备案主要的控制类
 * <p>
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/14 10:11
 * Modified: noprom <tyee.noprom@qq.com>
 */
@Controller
public class CompanyController {

    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource/home/company";

    @Autowired
    private AreaService areaService;

    @Autowired
    private CompanyService companyService;

    @Autowired
    private IndustryTypeService industryTypeService;

    /**
     * 获取所有的城市
     * 获取数据显示页面
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/home/company/add", method = RequestMethod.GET)
    public String getProvince(Model model) {
        ArrayList<Area> list = areaService.getAllCity();
        //刚开始打开页面时显示济南市的所有县
        ArrayList<Area> listCity = areaService.getAllAreaById(170);
        //获取所有的企业性质
        ArrayList<IndustryType> listIndustryType=industryTypeService.getIndustryByType(1);
        //获取所有的所属行业
        ArrayList<IndustryType> listIndustryInvolve=industryTypeService.getIndustryByType(2);
        model.addAttribute("editResult", list);
        model.addAttribute("editResultCity", listCity);
        model.addAttribute("listIndustryType", listIndustryType);
        model.addAttribute("listIndustryInvolve", listIndustryInvolve);
        return STATIC_PREFIX + "/add";
    }

    /**
     * 获取所有的地区
     * 获取数据显示页面
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/home/company/add/{id}", method = RequestMethod.GET)
    @ResponseBody
    public ArrayList<Area> getAllArea(@PathVariable("id") Integer id) {
        //获取地区
        System.out.println(id.intValue());
        ArrayList<Area> list = areaService.getAllAreaById(id.intValue());
        return list;
    }

    /**
     * 保存企业信息
     * 处理修改请求
     *
     * @param company
     * @param session
     * @return
     */
    @RequestMapping(value = "/home/company/add/submit", method = RequestMethod.POST)
    @ResponseBody
    public Map saveMessage(Company company, BindingResult result, HttpSession session) {
        Map map = new HashMap();
        User user = (User) session.getAttribute(Constant.LOGIN_USER);
        int id = user.getId();
        //检查数据是否已经插入到数据库中
        ArrayList<Company> companies = companyService.isNull(id);
        if (companies.size() > 0) {
            map.put("success", "exit");
            return map;
        }
        Matcher matcher = Pattern.compile("[1-9]\\d{5}(?!\\d)").matcher(company.getZipcode());
        if (!matcher.matches()) {
            map.put("success", "error1");
            return map;
        }
        matcher = Pattern.compile("^1\\d{10}$|^(0\\d{2,3}-?|\\(0\\d{2,3}\\))?[1-9]\\d{4,7}(-\\d{1,8})?$").matcher(company.getPhone());
        if (!matcher.matches()) {
            map.put("success", "error2");
            return map;
        }
        matcher = Pattern.compile("^((\\d{3,4})|\\d{3,4}-)?\\d{7,8}$").matcher(company.getFax());
        if (!matcher.matches()) {
            map.put("success", "error3");
            return map;
        }
        matcher = Pattern.compile("\\w[-\\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\\.)+[A-Za-z]{2,14}").matcher(company.getEmail());
        if (!matcher.matches()) {
            map.put("success", "error4");
            return map;
        }

        company.setId(id);
        companyService.setCompanyInfo(company);
        map.put("success", "success");
        return map;
    }

    /**
     * 企业信息修改
     * 获取修改页面
     *
     * @param model
     * @param session
     * @param response
     * @return
     * @throws IOException
     */
    @RequestMapping(value = "/home/company/edit", method = RequestMethod.GET)
    public String getProvinceEdit(Model model, HttpSession session, HttpServletResponse response) throws IOException {
        User user = (User) session.getAttribute(Constant.LOGIN_USER);
        int id = user.getId();
        ArrayList<Company> companies = companyService.isNull(id);
        if (companies.size() == 0) {
            response.sendRedirect("/home/company/add");
            return null;
        }
        Company company = companyService.getCompanyById(id);
        //id是主键，数组只有一个元素
        Area cityArea = areaService.getById(company.getCity_id());
        Area areaArea = areaService.getById(company.getArea_id());
        ArrayList<Area> listCity = areaService.getAllCity();
        ArrayList<Area> listArea = areaService.getAllAreaById(company.getCity_id());
        //获取所有的企业性质
        ArrayList<IndustryType> listIndustryType=industryTypeService.getIndustryByType(1);
        IndustryType industryType=industryTypeService.getIndustryById(company.getIndustry_type());
        //获取所有的所属行业
        ArrayList<IndustryType> listIndustryInvolve=industryTypeService.getIndustryByType(2);
        IndustryType industryType1=industryTypeService.getIndustryById(company.getIndustry_involved());
        model.addAttribute("listCity", listCity);
        model.addAttribute("listArea", listArea);
        model.addAttribute("company", company);
        model.addAttribute("cityArea", cityArea);
        model.addAttribute("areaArea", areaArea);
        model.addAttribute("listIndustryType", listIndustryType);
        model.addAttribute("listIndustryInvolve", listIndustryInvolve);
        model.addAttribute("industryType", industryType);
        model.addAttribute("industryType1", industryType1);
        return STATIC_PREFIX + "/edit";
    }

    /**
     * 保存修改信息
     *
     * @param company
     * @param session
     * @return
     */
    @RequestMapping(value = "/home/company/edit", method = RequestMethod.POST)
    @ResponseBody
    public Map saveInfo(Company company, HttpSession session) {
        Map map = new HashMap();
        User user = (User) session.getAttribute(Constant.LOGIN_USER);
        int id = user.getId();
        //检查数据是否已经插入到数据库中
        ArrayList<Company> companies = companyService.isNull(id);
        if (companies.size() == 0) {
            map.put("success", "noInfo");
            return map;
        }
        Matcher matcher = Pattern.compile("[1-9]\\d{5}(?!\\d)").matcher(company.getZipcode());
        if (!matcher.matches()) {
            map.put("success", "error1");
            return map;
        }
        matcher = Pattern.compile("^1\\d{10}$|^(0\\d{2,3}-?|\\(0\\d{2,3}\\))?[1-9]\\d{4,7}(-\\d{1,8})?$").matcher(company.getPhone());
        if (!matcher.matches()) {
            map.put("success", "error2");
            return map;
        }
        matcher = Pattern.compile("^((\\d{3,4})|\\d{3,4}-)?\\d{7,8}$").matcher(company.getFax());
        if (!matcher.matches()) {
            map.put("success", "error3");
            return map;
        }
        matcher = Pattern.compile("\\w[-\\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\\.)+[A-Za-z]{2,14}").matcher(company.getEmail());
        if (!matcher.matches()) {
            map.put("success", "error4");
            return map;
        }
        company.setId(id);
        companyService.updateCompanyInfo(company);
        map.put("success", "success");
        return map;
    }
}
