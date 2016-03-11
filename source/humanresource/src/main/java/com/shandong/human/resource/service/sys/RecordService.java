package com.shandong.human.resource.service.sys;

import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.SurveyTime;

import java.util.ArrayList;

/**
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/11 上午10:38
 */
public  interface RecordService {

    public ArrayList<SurveyTime> getAllSurveyTime();

    public ArrayList<Company> getAllCompany();

    public ArrayList<Company> getCompanyByCondition(String city_id, String area_id, String name, String code, String contact);
}
