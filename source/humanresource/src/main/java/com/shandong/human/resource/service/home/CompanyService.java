package com.shandong.human.resource.service.home;

import com.shandong.human.resource.domain.Company;

import java.util.ArrayList;

/**
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/20 10:29
 */

public interface CompanyService {
    //    保存输入信息
    public void setCompanyInfo(Company company);
    public ArrayList<Company> isNull(int id);
    public Company getCompanyById(int id);
    public void updateCompanyInfo(Company company);
}
