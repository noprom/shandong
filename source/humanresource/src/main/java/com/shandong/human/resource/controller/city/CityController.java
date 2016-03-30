package com.shandong.human.resource.controller.city;

import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.CompanyData;
import com.shandong.human.resource.domain.User;
import com.shandong.human.resource.service.city.CityService;
import com.shandong.human.resource.util.Constant;
import com.shandong.human.resource.util.SysInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/30 上午10:37
 */
@Controller
public class CityController {
    public static final String STATIC_PREFIX = "human-resource/city";
    @Autowired
    CityService cityService;

    /**
     * Author: constantine <1194479264@qq.com>
     * Date: 16/3/30 上午10:37
     * 显示查询页面
     */
    @RequestMapping(value = "/city/query", method = RequestMethod.GET)
    public String record(Model model, HttpServletRequest request, HttpServletResponse response) {
        User localUser = (User) request.getSession().getAttribute(Constant.LOGIN_USER);
        int city_id = localUser.getType();

        Integer[] IDS = cityService.getCompanyIdByCity(city_id);

        ArrayList<CompanyData> list = new ArrayList<CompanyData>();

        for (Integer i: IDS )
        {
            //System.out.println(i);
            ArrayList<CompanyData> temp =cityService.getCompanyDataByCompanyIdStatus0(i);
            for (CompanyData cd : temp)
            {
                list.add(cd);
            }
        }
        System.out.println(list.size());
        model.addAttribute("cityQueryResult",list);
        return STATIC_PREFIX + "/query";
    }

}
