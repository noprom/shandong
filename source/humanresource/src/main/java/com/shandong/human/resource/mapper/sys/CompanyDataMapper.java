package com.shandong.human.resource.mapper.sys;

import com.shandong.human.resource.domain.CompanyData;
import java.util.List;

import java.util.ArrayList;

/**
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/13 下午8:34
 */
public interface CompanyDataMapper {

    public ArrayList<CompanyData> getCompanyDataByCompanyId(Integer id);

    List<CompanyData> companyDataList();

    void deleteNewsById(Integer id);

    CompanyData getCompanyDataById(Integer id);

    Integer companyDataAdd(CompanyData companyData);
}
