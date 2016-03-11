package com.shandong.human.resource.controller.sys;

import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.SurveyTime;
import com.shandong.human.resource.service.sys.RecordService;
import com.shandong.human.resource.util.Constant;
import com.shandong.human.resource.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;

/**
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/10 下午2:07
 */
@Controller
public class RecordController {

    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource/sys/record";

    @Autowired
    private RecordService recordService;

    /**
     * Author: constantine <1194479264@qq.com>
     * Date: 16/3/10 下午2:07
     * 显示查询页面
     */
    @RequestMapping(value = "/sys/record/query", method = RequestMethod.GET)
    public String record(Model model) {
        ArrayList<Company> list = recordService.getAllCompany();
        model.addAttribute("recordResult", list);

        return STATIC_PREFIX + "/query";
    }

    /**
     * Author: constantine <1194479264@qq.com>
     * Date: 16/3/11 上午11:57
     * <p/>
     * 查询功能
     */
    @RequestMapping(value = "/sys/record/query", method = RequestMethod.POST)
    public String handleQuery(String city_id, String area_id, String name, String code, String contact, Model model) {
        System.out.println(city_id);
        System.out.println(area_id);
        System.out.println(name);
        System.out.println(code);

        System.out.println(contact);
        ArrayList<Company> list = recordService.getCompanyByCondition(city_id,
                area_id,
                name,
                code,
                contact);
        System.out.println(list.size());
        model.addAttribute("recordResult", list);
        return STATIC_PREFIX + "/query";
    }
}
