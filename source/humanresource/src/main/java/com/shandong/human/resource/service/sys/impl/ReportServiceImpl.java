package com.shandong.human.resource.service.sys.impl;

import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.CompanyData;
import com.shandong.human.resource.domain.SurveyTime;
import com.shandong.human.resource.mapper.sys.CompanyDataMapper;
import com.shandong.human.resource.mapper.sys.CompanyMapper;
import com.shandong.human.resource.mapper.sys.SurveyTimeMapper;
import com.shandong.human.resource.service.sys.RecordService;
import com.shandong.human.resource.service.sys.ReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

/**
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/11 上午10:40
 */
@Service
public class ReportServiceImpl implements ReportService {

    @Autowired
    private CompanyDataMapper companyDataMapper;


    /**
     * 获取全部CompanyData
     *
     */
    public ArrayList<CompanyData> getAllCompanyData() {
        return companyDataMapper.getAllCompanyData();
    }

    /**
     * 根据company_id获取CompanyData
     *
     */
    public ArrayList<CompanyData> getCompanyDataByCompanyId(Integer id) {
        return companyDataMapper.getCompanyDataByCompanyIdZTR(id);
    }

    public CompanyData getCompanyDataById(Integer id) {
        return companyDataMapper.getCompanyDataById(id);
    }

}
