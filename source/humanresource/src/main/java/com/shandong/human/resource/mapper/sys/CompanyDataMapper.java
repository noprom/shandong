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

<<<<<<< HEAD
    public ArrayList<CompanyData> getCompanyDataByCompanyIdS2(@Param("id")int id);


=======
    public Integer getCompanyDataCountByCity();
>>>>>>> 70c5d5e2cf416e97891d46ea50d0abd6ce975df0

    public Integer getCompanyDataCountByProvince();

    List<CompanyData> getCompanyDataList(@Param("ids") List<Long> ids);

<<<<<<< HEAD

=======
    int updateCompanyDataStatus(@Param("id") Integer id, @Param("status") Integer status);
>>>>>>> 70c5d5e2cf416e97891d46ea50d0abd6ce975df0
}
