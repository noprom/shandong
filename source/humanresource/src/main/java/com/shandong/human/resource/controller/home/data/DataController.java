package com.shandong.human.resource.controller.home.data;

import com.shandong.human.resource.domain.*;
import com.shandong.human.resource.service.home.ReduceService;
import com.shandong.human.resource.service.sys.CompanyDataService;
import com.shandong.human.resource.service.sys.SurveyTimeService;
import com.shandong.human.resource.util.CompanyDataQuaryList;
import com.shandong.human.resource.util.Constant;
import org.apache.commons.lang.ObjectUtils;
import org.apache.ibatis.jdbc.Null;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/14 10:11
 */
@Controller
public class DataController {
    //静态资源前缀
    public static final String STATIC_PREFIX = "human-resource/home/data";
    @Autowired
    private ReduceService reduceService;
    @Autowired
    public SurveyTimeService surveyTimeService;
    @Autowired
    public CompanyDataService companyDataService;


    //添加原因和类型
    @RequestMapping(value = "/home/data/add",method = RequestMethod.GET)
    public String add(Model model) {
        //获取原因类型
        ArrayList<Reduce> listType = reduceService.getTypeOfReason(1);
        ArrayList<Reduce> listReason = reduceService.getTypeOfReason(2);
        model.addAttribute("listType", listType);
        model.addAttribute("listReason", listReason);
        //获取调查期
        ArrayList<SurveyTime> listSurverTime=surveyTimeService.getAllSurveyTime();
        model.addAttribute("listSurverTime", listSurverTime);
        return STATIC_PREFIX + "/add";
    }



    //保存数据
    @RequestMapping(value = "/home/data/add/onSave",method = RequestMethod.POST)
    @ResponseBody
    public Map onSave(CompanyData companyData,HttpSession session) {
        Map map=new HashMap();
        companyData.setPid(0);
        User user=(User)session.getAttribute(Constant.LOGIN_USER);
        int id=user.getId();
        //CompanyData companyData1=companyDataService.getCompanyDataById(new Integer(id));

        companyData.setCompany_id(id);
        companyData.setCreate_time(new Date());
        companyDataService.companyDataAddFirst(companyData);
        map.put("success","success");
        return map;
    }

    //保存企业信息
    //获取图形显示页面
    @RequestMapping(value = "/home/data/add/submit",method = RequestMethod.POST)
    @ResponseBody
    public Map postMessage(CompanyData companyData,HttpSession session) {
        Map map = new HashMap();
        companyData.setPid(0);
        User user=(User)session.getAttribute(Constant.LOGIN_USER);
        int id=user.getId();
        companyData.setCompany_id(id);
        companyData.setStatus(0);
        companyData.setCreate_time(new Date());
        companyDataService.companyDataAddFirst(companyData);
        map.put("success","success");
        return map;
    }

    //获取修改页面
    @RequestMapping(value = "/home/data/query",method = RequestMethod.GET)
    public String query(Model model) {
        ArrayList<CompanyData> companyDatas=companyDataService.getAllCompanyDataFromSQL();
        ArrayList<CompanyDataQuaryList> companyDataQuaryLists=new ArrayList<CompanyDataQuaryList>();
        for(CompanyData companyData:companyDatas)
        {
            SurveyTime surveyTime=surveyTimeService.getAllSurveyTimeById(companyData.getSurvey_time_id());
            CompanyDataQuaryList companyDataQuaryList=new CompanyDataQuaryList();
            companyDataQuaryList.setStart_time(surveyTime.getStart_time());
            companyDataQuaryList.setEnd_time(surveyTime.getEnd_time());
            companyDataQuaryList.setCur_people(companyData.getCur_people());
            companyDataQuaryList.setInit_people(companyData.getInit_people());
            companyDataQuaryList.setOther_reason(companyData.getOther_reason());
            companyDataQuaryLists.add(companyDataQuaryList);
        }

        model.addAttribute("companyDataQuaryLists", companyDataQuaryLists);
        return STATIC_PREFIX + "/query";
    }
    //获取所有的地区
    //获取数据显示页面
    @RequestMapping(value = "/home/data/add/{id}", method = RequestMethod.GET)
    @ResponseBody
    public ArrayList<Area> getAllArea(@PathVariable("id") Integer id) {
        //获取地区
        System.out.println(id);
       // ArrayList<Area> list = areaService.getAllAreaById(id);
        return null;
    }



}
