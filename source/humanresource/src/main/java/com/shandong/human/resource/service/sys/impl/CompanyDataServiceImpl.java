package com.shandong.human.resource.service.sys.impl;

import com.shandong.human.resource.domain.CompanyData;
import com.shandong.human.resource.mapper.sys.CompanyDataMapper;
import com.shandong.human.resource.service.sys.CompanyDataService;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

/**
 * Author: helin <helin199210@icloud.com>
 * Time: 16/3/15 下午3:11
 */
@Service
@Transactional(isolation = Isolation.DEFAULT, rollbackFor = Exception.class)
public class CompanyDataServiceImpl implements CompanyDataService {
    @Autowired
    private CompanyDataMapper companyDataMapper;

    public List<CompanyData> companyDataList() {
        return companyDataMapper.companyDataList();
    }

    public void deleteNewsById(Integer id) {
        companyDataMapper.deleteNewsById(id);
    }

    public CompanyData getCompanyDataById(Integer id) {
        return companyDataMapper.getCompanyDataById(id);
    }

    public Integer companyDataAdd(CompanyData companyData) {
        return companyDataMapper.companyDataAdd(companyData);
    }

    public List<CompanyData> getTotalPeopleFromCompanyDataOfEverySuvryTime() {
        return companyDataMapper.getTotalPeopleFromCompanyDataOfEverySuvryTime();
    }

    public void companyDataAddFirst(CompanyData companyData) {
        companyDataMapper.companyDataAddFirst(companyData);
    }

    public ArrayList<CompanyData> getAllCompanyDataFromSQL() {
        return companyDataMapper.getAllCompanyDataFromSQL();
    }

    public List<CompanyData> getCompanyDataBySurveyTimeId(int survey_time_id) {
        return companyDataMapper.getCompanyDataBySurveyTimeId(survey_time_id);
    }

    /**
     * 获得市用户应该看到的数据总数
     *
     * @return
     */
    public Integer getCompanyDataCountByCity() {
        return companyDataMapper.getCompanyDataCountByCity();
    }

    /**
     * 获得省用户应该看到的数据总数
     *
     * @return
     */
    public Integer getCompanyDataCountByProvince() {
        return companyDataMapper.getCompanyDataCountByProvince();
    }

    /**
     * 根据status字段的值使用
     * in查询查询数据列表
     *
     * @param ids
     * @return
     */
    public List<CompanyData> getCompanyDataList(List<Long> ids) {
        return companyDataMapper.getCompanyDataList(ids);
    }

    /**
     * 更新数据的状态
     *
     * @param id
     * @param status
     * @return
     */
    public int updateCompanyDataStatus(Integer id, Integer status) {
        return companyDataMapper.updateCompanyDataStatus(id, status);
    }

    /**
     * 按照最新时间获取公司的ID
     *
     * @param company_id
     * @return
     */
    public  ArrayList<CompanyData> getCompanyDataByCompanyIdLastestTime(int company_id)
    {
        return companyDataMapper.getCompanyDataByCompanyIdLastestTime(company_id);
    }
}
