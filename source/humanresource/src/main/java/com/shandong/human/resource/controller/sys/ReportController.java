package com.shandong.human.resource.controller.sys;

import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.CompanyData;
import com.shandong.human.resource.service.sys.ReportService;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;

/**
 * Created by constantine on 2016/3/23.
 */

@Controller
public class ReportController {
    public static final String STATIC_PREFIX = "human-resource/sys/report";

    @Autowired
    private ReportService reportService;

    @RequestMapping(value = "/sys/report/query", method = RequestMethod.GET)
    public String getAllCompanyData(Model model) {

        ArrayList<CompanyData> list = reportService.getAllCompanyData();
        model.addAttribute("reportResult",list);

        return STATIC_PREFIX + "/query";
    }

    @RequestMapping(value = "/sys/report/query", method = RequestMethod.POST)
    public String getAllCompanyDataById(Model model,int company_id) {

        ArrayList<CompanyData> list = reportService.getCompanyDataById(company_id);
        model.addAttribute("reportResult",list);

        return STATIC_PREFIX + "/query";
    }

    @RequestMapping(value = "/sys/report", method = RequestMethod.POST)
    public void report


}
