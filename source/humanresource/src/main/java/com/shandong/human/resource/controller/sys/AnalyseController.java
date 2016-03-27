package com.shandong.human.resource.controller.sys;

import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.CompanyData;
import com.shandong.human.resource.service.home.CompanyService;
import com.shandong.human.resource.service.sys.CompanyDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;


/**
 * Author: helin <helin199210@icloud.com>
 * Time: 16/3/27 上午9:51
 */

@Controller
public class AnalyseController {
    public static final String STATIC_PREFIX = "human-resource/sys/companyData";

    @Autowired
    private CompanyDataService companyDataService;
    @Autowired
    private CompanyService companyService;


    @RequestMapping(value = "/sys/data/display", method = RequestMethod.GET)
    String companyDataDisplay(Model model, HttpSession httpSession) {


//        List<CompanyData> companyDataOfPeople = companyDataService.getTotalPeopleFromCompanyDataOfEverySuvryTime();
//        if (companyDataOfPeople.size() > 0) {
//            httpSession.setAttribute("peopleOfEverySurveyTime", companyDataOfPeople);
//        } else {
//            for (int i = 0; i < 12; i++) {
//                companyDataOfPeople.get(i).setInit_people(0);
//            }
//            httpSession.setAttribute("peopleOfEverySurveyTime", companyDataOfPeople);
//        }


        return STATIC_PREFIX + "/display";


    }

    /**
     * 按照城市获取企业数量
     *
     * @param model
     * @param httpSession
     * @return
     */
    @RequestMapping(value = "/sys/data/companyNumberByCity", method = RequestMethod.GET)
    String companyNumber(Model model, HttpSession httpSession) {

        List<CompanyData> companyDataOfPeople = companyDataService.getTotalPeopleFromCompanyDataOfEverySuvryTime();
        if (companyDataOfPeople.size() > 0) {
            httpSession.setAttribute("peopleOfEverySurveyTime", companyDataOfPeople);
        } else {
            for (int i = 0; i < 12; i++) {
                companyDataOfPeople.get(i).setInit_people(0);
            }
            httpSession.setAttribute("peopleOfEverySurveyTime", companyDataOfPeople);
        }

        List<Company> companyNumberByCity = companyService.getCompanyNumberByCity();


        httpSession.setAttribute("companyNumberByCityOfIntType", companyNumberByCity);
        return STATIC_PREFIX + "/analyse";
    }


}
