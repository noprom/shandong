package com.shandong.human.resource.controller.home.data;

import com.shandong.human.resource.common.SurveyTimeString;
import com.shandong.human.resource.domain.*;
import com.shandong.human.resource.service.home.ReduceService;
import com.shandong.human.resource.service.sys.CompanyDataService;
import com.shandong.human.resource.service.sys.SurveyTimeService;
import com.shandong.human.resource.util.CompanyDataQuaryList;
import com.shandong.human.resource.util.Constant;
import com.shandong.human.resource.util.Result;
import org.apache.commons.lang.ObjectUtils;
import org.apache.ibatis.jdbc.Null;
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
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 企业数据上报主要的控制器类
 * <p>
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

    /**
     * 添加原因和类型
     *
     * @param model
     * @param request
     * @param session
     * @param response
     * @return
     */
    @RequestMapping(value = "/home/data/add", method = RequestMethod.GET)
    public String add(Model model, HttpServletRequest request, HttpSession session, HttpServletResponse response) {
        User user = (User) session.getAttribute(Constant.LOGIN_USER);
        int id = user.getId();
        ArrayList<CompanyData> companyDatas = companyDataService.getCompanyDataByCompanyIdLastestTime(id);
        if (companyDatas.size() > 0) {
            //状态:-2:省审核不通过;-1:市审核不通过;0:待市审核;1:市审核通过,待省审核;2:省审核通过,待上报到部;3:已上报到部
            int status = companyDatas.remove(0).getStatus();
            if (status == -2) {
                request.setAttribute("Info", "当前状态：省审核不通过,可以更改并提交。");
                request.setAttribute("status", new Integer(status));
                //return STATIC_PREFIX + "/add";
            } else if (status == -1) {
                request.setAttribute("Info", "当前状态：市审核不通过,可以更改并提交。");
                request.setAttribute("status", new Integer(status));
                //return STATIC_PREFIX + "/add";
            } else if (status == 0) {
                request.setAttribute("Info", "当前状态：待市审核。");
                request.setAttribute("status", new Integer(status));
                return STATIC_PREFIX + "/add";
            } else if (status == 1) {
                request.setAttribute("Info", "当前状态：市审核通过,待省审核。");
                request.setAttribute("status", new Integer(status));
                return STATIC_PREFIX + "/add";
            } else if (status == 2) {
                request.setAttribute("status", new Integer(status));
                request.setAttribute("Info", "当前状态：省审核通过,待上报到部。");
                return STATIC_PREFIX + "/add";
            } else if (status == 3) {
                request.setAttribute("status", new Integer(status));
                request.setAttribute("Info", "当前状态：已上报到部。");
                return STATIC_PREFIX + "/add";
            }
        } else {
            request.setAttribute("status", new Integer(-10));
            request.setAttribute("Info", "");
        }
        //获取原因类型
        ArrayList<Reduce> listType = reduceService.getTypeOfReason(1);
        ArrayList<Reduce> listReason = reduceService.getTypeOfReason(2);
        model.addAttribute("listType", listType);
        model.addAttribute("listReason", listReason);
        //获取调查期
        DateFormat mediumDateFormat = DateFormat.getDateTimeInstance(DateFormat.MEDIUM, DateFormat.MEDIUM);
        ArrayList<SurveyTime> listSurverTime = surveyTimeService.getAllSurveyTime();
        ArrayList<SurveyTimeString> surveyTimeStrings = new ArrayList<SurveyTimeString>();
        surveyTimeStrings.clear();
        for (SurveyTime surveyTime : listSurverTime) {
            SurveyTimeString surveyTimeString = new SurveyTimeString();
            surveyTimeString.setId(surveyTime.getId());
            surveyTimeString.setStart_time(mediumDateFormat.format(surveyTime.getStart_time()));
            surveyTimeString.setEnd_time(mediumDateFormat.format(surveyTime.getEnd_time()));
            surveyTimeStrings.add(surveyTimeString);
        }
        model.addAttribute("listSurverTime", surveyTimeStrings);
        return STATIC_PREFIX + "/add";
    }


    //保存数据
//    @RequestMapping(value = "/home/data/addOnSave",method = RequestMethod.POST)
//    @ResponseBody
//    public Map onSave(CompanyData companyData,HttpSession session) {
//        Map map=new HashMap();
//        //companyData.setPid(0);
//        User user=(User)session.getAttribute(Constant.LOGIN_USER);
//        int id=user.getId();
//        //CompanyData companyData1=companyDataService.getCompanyDataById(new Integer(id));
//
//        companyData.setCompany_id(id);
//        companyData.setCreate_time(new Date());
//        companyDataService.companyDataAddFirst(companyData);
//        map.put("success","success");
//        return map;
//    }

    /**
     * 保存企业信息
     * 获取图形显示页面
     *
     * @param companyData
     * @param session
     * @return
     */
    @RequestMapping(value = "/home/data/add/submit", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, String> postMessage(CompanyData companyData, HttpSession session) {
        Map map = new HashMap();
        User user = (User) session.getAttribute(Constant.LOGIN_USER);
        int id = user.getId();
        ArrayList<CompanyData> companyDatas = companyDataService.getCompanyDataByCompanyIdLastestTime(id);
        companyData.setStatus(0);
        if (companyDatas.size() == 0) {
            companyData.setPid(0);
            companyData.setCompany_id(id);
            companyData.setCreate_time(new Date());
            companyDataService.companyDataAddFirst(companyData);
            map.put("success", "success");
            return map;
        }
        companyData.setCompany_id(id);
        CompanyData companyData1 = companyDatas.remove(0);
        companyData.setPid(companyData1.getId());
        companyData.setCreate_time(companyData1.getCreate_time());
        companyDataService.companyDataAddFirst(companyData);
        map.put("success", "success");
        return map;
    }

    /**
     * 获取修改页面
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/home/data/query", method = RequestMethod.GET)
    public String query(Model model) {
        ArrayList<CompanyData> companyDatas = companyDataService.getAllCompanyDataFromSQL();
        ArrayList<CompanyDataQuaryList> companyDataQuaryLists = new ArrayList<CompanyDataQuaryList>();
        DateFormat mediumDateFormat = DateFormat.getDateTimeInstance(DateFormat.MEDIUM, DateFormat.MEDIUM);
        for (CompanyData companyData : companyDatas) {
            SurveyTime surveyTime = surveyTimeService.getAllSurveyTimeById(companyData.getSurvey_time_id());
            CompanyDataQuaryList companyDataQuaryList = new CompanyDataQuaryList();
            companyDataQuaryList.setStart_time(mediumDateFormat.format(surveyTime.getStart_time()));
            companyDataQuaryList.setEnd_time(mediumDateFormat.format(surveyTime.getEnd_time()));
            companyDataQuaryList.setCur_people(companyData.getCur_people());
            companyDataQuaryList.setInit_people(companyData.getInit_people());
            companyDataQuaryList.setOther_reason(companyData.getOther_reason());
            companyDataQuaryLists.add(companyDataQuaryList);
        }

        model.addAttribute("companyDataQuaryLists", companyDataQuaryLists);
        return STATIC_PREFIX + "/query";
    }
}
