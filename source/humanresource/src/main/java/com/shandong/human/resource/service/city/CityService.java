package com.shandong.human.resource.service.city;

import com.shandong.human.resource.domain.CompanyData;

import java.util.ArrayList;

/**
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/30 上午10:41
 */
public interface CityService {

    public Integer[] getCompanyIdByCity(Integer city_id);

    public ArrayList<CompanyData> getCompanyDataByCompanyIdStatus0(Integer company_id);

    public void cityCheckPass(Integer id);

    public void cityCheckFail(Integer id,String reason);
}
