package com.shandong.human.resource.controller.sys.surveyTime;

import com.shandong.human.resource.common.AuthTree;
import com.shandong.human.resource.controller.CommonController;
import com.shandong.human.resource.domain.Auth;
import com.shandong.human.resource.domain.SurveyTime;
import com.shandong.human.resource.service.sys.AuthService;
import com.shandong.human.resource.service.sys.SurveyTimeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Brief: 权限管理类
 * Author: syc
 * Date: 2016/3/15
 */
@RequestMapping("/sys")
@Controller
public class SurveyTimeController{

    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource/sys/surveyTime";
    @Autowired
    private SurveyTimeService service;

    @RequestMapping(value = "/surveyTime", method = RequestMethod.GET)
    public String toServeyTimePage(String strTime,String endTime, HttpServletRequest request, HttpServletResponse response) {
        return STATIC_PREFIX+"/add";
    }

    @RequestMapping(value = "/surveyTime/add", method = RequestMethod.POST)
    public void add(String date, HttpServletResponse response) {

        String[] times = date.split("-");
        if(times.length<2){
            try {
                response.sendRedirect("/sys/surveyTime");
            } catch (IOException e) {
                e.printStackTrace();
            }
            return;
        }

        SurveyTime toAdd = new SurveyTime();
        DateFormat date_t =new SimpleDateFormat("MM/dd/yyyy");
        String strTime_s = times[0];
        String endTime_s = times[1];

        Date strDate = new Date();
        Date endDate = new Date();

        try {
            strDate = date_t.parse(strTime_s);
            endDate = date_t.parse(endTime_s);
            toAdd.setStart_time(strDate);
            toAdd.setEnd_time(endDate);
            service.insertSurveyTime(toAdd);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        try {
            response.sendRedirect("/sys/surveyTime");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}