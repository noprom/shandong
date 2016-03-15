package com.shandong.human.resource.service.impl.sys;

import com.shandong.human.resource.domain.CompanyData;
import com.shandong.human.resource.mapper.sys.CompanyDataMapper;
import com.shandong.human.resource.service.sys.CompanyDataService;
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
public class CompanyDataServiceImpl implements CompanyDataService{
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
}
