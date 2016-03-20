package com.shandong.human.resource.service.home.impl;

import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.mapper.sys.CompanyMapper;
import com.shandong.human.resource.service.home.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/20 10:30
 */
@Service
public class CompanyServiceImpl implements CompanyService {
    @Autowired
    private CompanyMapper companyMapper;
    //    保存输入信息
    public void setCompanyInfo(Company company)
    {
        companyMapper.setCompanyInfo(company);
    }
}
