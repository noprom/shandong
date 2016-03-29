package com.shandong.human.resource.mapper.sys;

import com.shandong.human.resource.domain.CompanyData;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

/**
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/13 下午8:34
 */
public interface CompanyDataMapper {

    public ArrayList<CompanyData> getAllCompanyData();

    public ArrayList<CompanyData> getCompanyDataByCompanyIdZTR(@Param("id") Integer id);

    public ArrayList<CompanyData> getCompanyDataByCompanyId(@Param("id") Integer id);

    List<CompanyData> companyDataList();

    void deleteNewsById(Integer id);

    CompanyData getCompanyDataById(Integer id);

    Integer companyDataAdd(CompanyData companyData);

    List<CompanyData> getTotalPeopleFromCompanyDataOfEverySuvryTime();

    public void companyDataAddFirst(CompanyData companyData);

    public ArrayList<CompanyData> getAllCompanyDataFromSQL();

    public void changeCompanyDataStatusById(@Param("id") Integer id);

    public ArrayList<CompanyData> getCompanyDataBySurveyTimeId(int survey_time_id);






}
