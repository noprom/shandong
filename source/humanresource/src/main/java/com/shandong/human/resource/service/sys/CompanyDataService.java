package com.shandong.human.resource.service.sys;

import com.shandong.human.resource.domain.CompanyData;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

/**
 * Author: helin <helin199210@icloud.com>
 * Time: 16/3/15 下午3:11
 */
public interface CompanyDataService {
    List<CompanyData> companyDataList();

    void deleteNewsById(Integer id);

    CompanyData getCompanyDataById(Integer id);

    Integer companyDataAdd(CompanyData companyData);

    List<CompanyData> getTotalPeopleFromCompanyDataOfEverySuvryTime();

    public void companyDataAddFirst(CompanyData companyData);

    public ArrayList<CompanyData> getAllCompanyDataFromSQL();

    List<CompanyData> getCompanyDataBySurveyTimeId(int survey_time_id);

    public Integer getCompanyDataCountByCity();

    public Integer getCompanyDataCountByProvince();

    List<CompanyData> getCompanyDataList(List<Long> ids);
}
