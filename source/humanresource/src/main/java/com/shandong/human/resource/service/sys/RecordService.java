package com.shandong.human.resource.service.sys;

import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.CompanyData;
import com.shandong.human.resource.domain.SurveyTime;

import java.util.ArrayList;

/**
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/11 上午10:38
 */
public  interface RecordService {

    /*
     * 通过id获取Company对象
     * 返回类型为一个Company类
     */
    public Company getCompanyById(Integer id);


    /*
     * 获得所有SurveyTime对象
     * 返回类型为一个SurveyTime的ArrayList
     */
    public ArrayList<SurveyTime> getAllSurveyTime();

    /*
     * 通过id获取指定的CompanyData对象
     */
    public ArrayList<CompanyData> getCompanyDataByCompanyId(Integer id);

    /*
     * 获取全部的Company对象
     */
    public ArrayList<Company> getAllCompany();

    /*
     * 通过条件查找Company对象
     */
    public ArrayList<Company> getCompanyByCondition(String city_id, String area_id, String name, String code, String contact);

}
