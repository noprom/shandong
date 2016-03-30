package com.shandong.human.resource.service.city.impl;

import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.CompanyData;
import com.shandong.human.resource.mapper.city.CityMapper;
import com.shandong.human.resource.service.city.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

/**
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/30 上午10:42
 */

@Service
public class CityServiceImpl implements CityService {

    @Autowired
    CityMapper cityMapper;

    public Integer[] getCompanyIdByCity(Integer city_id)
    {
        ArrayList<Company> list = cityMapper.getCompanyIdByCityId(city_id);
        Integer[] IDS = new Integer[list.size()];
        for(int i = 0; i<list.size() ; i++)
        {
            IDS[i]=list.get(i).getId();
        }
        return IDS;
    }

    public ArrayList<CompanyData> getCompanyDataByCompanyIdStatus0(Integer company_id)
    {
        return cityMapper.getCompanyDataByCompanyIdStatus0(company_id);
    }

    public void cityCheckPass(Integer id)
    {
        cityMapper.cityCheckPass(id);
    }

    public void cityCheckFail(Integer id,String reason)
    {
        cityMapper.cityCheckFail(id.toString(),reason);
    }
}
