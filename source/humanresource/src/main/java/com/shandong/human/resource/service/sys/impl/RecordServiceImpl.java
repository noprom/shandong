package com.shandong.human.resource.service.sys.impl;

import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.SurveyTime;
import com.shandong.human.resource.mapper.sys.CompanyMapper;
import com.shandong.human.resource.mapper.sys.SurveyTimeMapper;
import com.shandong.human.resource.service.sys.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

/**
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/11 上午10:40
 */
@Service
public class RecordServiceImpl implements RecordService {

    @Autowired
    private SurveyTimeMapper surveyTimeMapper;

    @Autowired
    private CompanyMapper companyMapper;


    /**
     * 获得全部调查时间
     *
     * @return
     */

    public ArrayList<SurveyTime> getAllSurveyTime() {
        return surveyTimeMapper.getAllSurveyTime();
    }

    /**
     * 获得全部Company
     *
     * @return
     */

    public ArrayList<Company> getAllCompany() {
        return companyMapper.getAllCompany();
    }

    /**
     * 根据条件查找Company
     *
     * @return
     */
    public ArrayList<Company> getCompanyByCondition(String city_id, String area_id, String name, String code, String contact)
    {
        return companyMapper.getCompanyByCondition(city_id,area_id,name,code,contact);
    }

}
