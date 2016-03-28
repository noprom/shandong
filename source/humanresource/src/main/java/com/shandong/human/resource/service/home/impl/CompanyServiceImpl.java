package com.shandong.human.resource.service.home.impl;

import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.mapper.sys.CompanyMapper;
import com.shandong.human.resource.service.home.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

<<<<<<< HEAD
import java.util.List;
=======
import java.util.ArrayList;
>>>>>>> 15ac3b8b785a47c52ec8100202032fb5b31ea7c9

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
<<<<<<< HEAD

    public List<Company> getCompanyNumberByCity() {
        return companyMapper.getCompanyNumberByCity();
=======
    public ArrayList<Company> isNull(int id)
    {
        return companyMapper.isNull(id);
    }
    public Company getCompanyById(int id)
    {
        return companyMapper.getCompanyById(id);
    }
    public void updateCompanyInfo(Company company)
    {
        companyMapper.updateCompanyInfo(company);
>>>>>>> 15ac3b8b785a47c52ec8100202032fb5b31ea7c9
    }
}
