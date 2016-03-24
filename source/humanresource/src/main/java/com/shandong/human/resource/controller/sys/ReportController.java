package com.shandong.human.resource.controller.sys;

import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.CompanyData;
import com.shandong.human.resource.service.sys.ReportService;
import com.sun.mail.iap.Response;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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



    /**
     * Created by constantine on 2016/3/23.
     * 获取全部status为1的CompanyData
     */
    @RequestMapping(value = "/sys/report/query", method = RequestMethod.GET)
    public String getAllCompanyData(Model model) {

        ArrayList<CompanyData> list = reportService.getAllCompanyData();
        model.addAttribute("reportResult",list);

        return STATIC_PREFIX + "/query";
    }

    /**
     * Created by constantine on 2016/3/23.
     * 获取指定company_id并且status为1的CompanyData
     */
    @RequestMapping(value = "/sys/report/query", method = RequestMethod.POST)
    public String getAllCompanyDataById(Model model,int company_id) {

        ArrayList<CompanyData> list = reportService.getCompanyDataByCompanyId(company_id);
        model.addAttribute("reportResult",list);

        return STATIC_PREFIX + "/query";
    }

    /**
     * Created by constantine on 2016/3/23.
     * 上报到部级
     */
    @RequestMapping(value = "/sys/report", method = RequestMethod.POST)
    public void report(Model model,String choose)
    {
        String[] ids = choose.split(",");
        ArrayList<CompanyData> list = new ArrayList<CompanyData>();
        for (String r : ids) {
            if (!r.equals("0"))
            {
                int id = Integer.parseInt(r);
                CompanyData companyData = reportService.getCompanyDataById(id);
                list.add(companyData);
            }
        }
        //上报
    }

    /**
     * Author: constantine <1194479264@qq.com>
     * Date: 16/3/13 下午7:44
     * 显示详情页面
     */
    @RequestMapping(value = "/sys/report/{id}", method = RequestMethod.GET)
    public String recordDetail(Model model, @PathVariable("id") Integer id)
    {

//        Company detail = recordService.getCompanyById(id);
//        model.addAttribute("companyDetail", detail);
        ArrayList<CompanyData> list = reportService.getCompanyDataByCompanyId(id);
        model.addAttribute("companyDataList",list);
        return STATIC_PREFIX + "/detail";
    }


}
