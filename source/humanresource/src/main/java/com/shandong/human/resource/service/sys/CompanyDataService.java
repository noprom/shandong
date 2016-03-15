package com.shandong.human.resource.service.sys;

import com.shandong.human.resource.domain.CompanyData;
import java.util.List;

/**
 * Author: helin <helin199210@icloud.com>
 * Time: 16/3/15 下午3:11
 */
public interface CompanyDataService {
    List<CompanyData> companyDataList();

    void deleteNewsById(Integer id);

    CompanyData getCompanyDataById(Integer id);

    Integer companyDataAdd(CompanyData companyData);
}
