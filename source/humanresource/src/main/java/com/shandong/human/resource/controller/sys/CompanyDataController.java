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

    @RequestMapping(value = "sys/data/list", method = RequestMethod.GET)
    String companyDataList(Model model, HttpSession httpSession) {
        List<CompanyData> companyDataList = companyDataService.companyDataList();
        model.addAttribute("companyDataList", companyDataList);
        return STATIC_PREFIX + "/list";
    }

    @RequestMapping(value = "sys/data/delete/{id}", method = RequestMethod.GET)
    String companyDataDelete(@PathVariable("id") Integer id, Model model, HttpSession httpSession, HttpServletRequest request) {

        companyDataService.deleteNewsById(id);

        List<CompanyData> companyDataList = companyDataService.companyDataList();
        model.addAttribute("companyDataList", companyDataList);
        return STATIC_PREFIX + "/list";
    }

    @RequestMapping(value = "sys/data/edit/{id}", method = RequestMethod.GET)
    String companyDataEditPage(@PathVariable Integer id, Model model, HttpSession httpSession) {

        CompanyData companyData = companyDataService.getCompanyDataById(id);
        httpSession.setAttribute("companyData",companyData);
        httpSession.setAttribute("create_time",companyData.getCreate_time());
        return STATIC_PREFIX + "/edit";
    }

    @RequestMapping(value = "sys/data/edit", method = RequestMethod.POST)
    String companyDataEdit(CompanyData companyData,Model model, HttpSession httpSession) {

        companyData.setCreate_time((Date) httpSession.getAttribute("create_time"));
        Integer id = companyDataService.companyDataAdd(companyData);

        List<CompanyData> companyDataList = companyDataService.companyDataList();
        model.addAttribute("companyDataList", companyDataList);
        return STATIC_PREFIX + "/list";
    }

    @RequestMapping(value = "sys/data/display", method = RequestMethod.GET)
    String companyDataDisplay(Model model, HttpSession httpSession) {
        return STATIC_PREFIX + "/display";
    }

}