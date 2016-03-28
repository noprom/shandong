package com.shandong.human.resource.controller.sys;

import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.CompanyData;
import com.shandong.human.resource.domain.StatisticsOfCompany;
import com.shandong.human.resource.service.home.CompanyService;
import com.shandong.human.resource.service.sys.CompanyDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.text.DecimalFormat;
import java.util.ArrayList;
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
        float sum = 0;
        for (int i = 0; i < companyNumberByCity.size(); i++) {

            sum += companyNumberByCity.get(i).getCity_id();
        }

        List<StatisticsOfCompany> statisticsOfCompanyList = new ArrayList<StatisticsOfCompany>();
        DecimalFormat df   = new DecimalFormat("######0.00");
        for (int i = 0; i < companyNumberByCity.size(); i++) {


            StatisticsOfCompany statisticsOfCompany = new StatisticsOfCompany();

            float proportion = companyNumberByCity.get(i).getCity_id() / sum * 100;

            statisticsOfCompany.setCity(companyNumberByCity.get(i).getAddress());
            statisticsOfCompany.setNumber(companyNumberByCity.get(i).getCity_id());
            statisticsOfCompany.setProportion(df.format(proportion));

            statisticsOfCompanyList.add(statisticsOfCompany);
        }

        httpSession.setAttribute("statisticsOfCompanyList", statisticsOfCompanyList);

//        httpSession.setAttribute("sum",sum);
//        httpSession.setAttribute("companyProportionByCity",companyProportionByCity);
//        httpSession.setAttribute("companyNumberByCityOfIntType", companyNumberByCity);

        return STATIC_PREFIX + "/analyse";
    }


}
