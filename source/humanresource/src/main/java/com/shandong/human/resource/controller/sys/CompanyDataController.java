package com.shandong.human.resource.controller.sys;

import com.shandong.human.resource.domain.CompanyData;
import com.shandong.human.resource.service.sys.CompanyDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * Author: helin <helin199210@icloud.com>
 * Time: 16/3/15 下午2:52
 */
@Controller
public class CompanyDataController {

    public static final String STATIC_PREFIX = "human-resource/sys/companyData";

    @Autowired
    private CompanyDataService companyDataService;

    /**
     * 显示companyData界面
     *
     * @param model
     * @param httpSession
     * @return
     */
    @RequestMapping(value = "sys/data/list", method = RequestMethod.GET)
    String companyDataList(Model model, HttpSession httpSession) {
        List<CompanyData> companyDataList = companyDataService.companyDataList();
        model.addAttribute("companyDataList", companyDataList);
        return STATIC_PREFIX + "/list";
    }

    /**
     * 删除companyData项
     *
     * @param id
     * @param model
     * @param httpSession
     * @param request
     * @return
     */
    @RequestMapping(value = "sys/data/delete/{id}", method = RequestMethod.GET)
    String companyDataDelete(@PathVariable("id") Integer id, Model model, HttpSession httpSession, HttpServletRequest request) {

        companyDataService.deleteNewsById(id);

        List<CompanyData> companyDataList = companyDataService.companyDataList();
        model.addAttribute("companyDataList", companyDataList);
        return STATIC_PREFIX + "/list";
    }

    /**
     * 根据id获取companyData修改页
     *
     * @param id
     * @param model
     * @param httpSession
     * @return
     */
    @RequestMapping(value = "sys/data/edit/{id}", method = RequestMethod.GET)
    String companyDataEditPage(@PathVariable Integer id, Model model, HttpSession httpSession) {

        CompanyData companyData = companyDataService.getCompanyDataById(id);
        httpSession.setAttribute("companyData",companyData);
        httpSession.setAttribute("create_time",companyData.getCreate_time());
        return STATIC_PREFIX + "/edit";
    }

    /**
     * 修改companyData项,并添加到数据库中
     *
     * @param companyData
     * @param model
     * @param httpSession
     * @return
     */
    @RequestMapping(value = "sys/data/edit", method = RequestMethod.POST)
    String companyDataEdit(CompanyData companyData,Model model, HttpSession httpSession) {

        companyData.setCreate_time((Date) httpSession.getAttribute("create_time"));
        Integer id = companyDataService.companyDataAdd(companyData);

        List<CompanyData> companyDataList = companyDataService.companyDataList();
        model.addAttribute("companyDataList", companyDataList);
        return STATIC_PREFIX + "/list";
    }

    /**
     * 显示companyData图表分析页面
     *
     * @param model
     * @param httpSession
     * @return
     */
    @RequestMapping(value = "sys/data/display", method = RequestMethod.GET)
    String companyDataDisplay(Model model, HttpSession httpSession) {


        List<CompanyData> companyDataOfPeople = companyDataService.getTotalPeopleFromCompanyDataOfEverySuvryTime();
        httpSession.setAttribute("peopleOfEverySurveyTime", companyDataOfPeople);

        httpSession.setAttribute("peopleOfEverySurveyTime0", companyDataOfPeople.get(0).getInit_people());
////        System.out.println(companyDataOfPeople.get(1).getInit_people() + "!!!!!!!!!!!!!!!!!!!!!!!");
        httpSession.setAttribute("peopleOfEverySurveyTime1", companyDataOfPeople.get(1).getInit_people());
        httpSession.setAttribute("peopleOfEverySurveyTime2", companyDataOfPeople.get(2).getInit_people());
        httpSession.setAttribute("peopleOfEverySurveyTime3", companyDataOfPeople.get(3).getInit_people());
        httpSession.setAttribute("peopleOfEverySurveyTime4", companyDataOfPeople.get(4).getInit_people());
        httpSession.setAttribute("peopleOfEverySurveyTime5", companyDataOfPeople.get(5).getInit_people());
        httpSession.setAttribute("peopleOfEverySurveyTime6", companyDataOfPeople.get(6).getInit_people());
        httpSession.setAttribute("peopleOfEverySurveyTime7", companyDataOfPeople.get(7).getInit_people());
        httpSession.setAttribute("peopleOfEverySurveyTime8", companyDataOfPeople.get(8).getInit_people());
        httpSession.setAttribute("peopleOfEverySurveyTime9", companyDataOfPeople.get(9).getInit_people());
        httpSession.setAttribute("peopleOfEverySurveyTime10", companyDataOfPeople.get(10).getInit_people());
        httpSession.setAttribute("peopleOfEverySurveyTime11", companyDataOfPeople.get(11).getInit_people());
        return STATIC_PREFIX + "/display";
    }

}
