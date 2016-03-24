package com.shandong.human.resource.service.sys;

import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.CompanyData;
import com.shandong.human.resource.domain.SurveyTime;

import java.util.ArrayList;

/**
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/24 上午10:38
 */
public  interface ReportService {

    /*
     * 获取全部CompanyData
     * 返回类型为一个ArrayList<CompanyData>
     */
    public ArrayList<CompanyData> getAllCompanyData();


    /*
     * 根据company_id获取CompanyData
     * 返回类型为一个ArrayList<CompanyData>
     */
    public ArrayList<CompanyData> getCompanyDataByCompanyId(Integer id);

    /*
     * 根据id获取CompanyData
     * 返回类型为一个ArrayList<CompanyData>
     */
    public CompanyData getCompanyDataById(Integer id);



}
