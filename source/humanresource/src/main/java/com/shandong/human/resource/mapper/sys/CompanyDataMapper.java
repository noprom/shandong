package com.shandong.human.resource.mapper.sys;

import com.fasterxml.jackson.databind.type.ArrayType;
import com.shandong.human.resource.domain.CompanyData;
import org.apache.ibatis.annotations.Param;

import java.util.List;

import java.util.ArrayList;

/**
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/13 下午8:34
 */
public interface CompanyDataMapper {

    public ArrayList<CompanyData> getAllCompanyData();

    public ArrayList<CompanyData> getCompanyDataByCompanyIdZTR(@Param("id") Integer id);

    public ArrayList<CompanyData> getCompanyDataByCompanyId(Integer id);

    List<CompanyData> companyDataList();

    void deleteNewsById(Integer id);

    CompanyData getCompanyDataById(Integer id);

    Integer companyDataAdd(CompanyData companyData);

    List<CompanyData> getTotalPeopleFromCompanyDataOfEverySuvryTime();
}
