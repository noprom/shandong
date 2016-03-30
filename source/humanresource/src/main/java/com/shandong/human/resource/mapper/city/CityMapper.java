package com.shandong.human.resource.mapper.city;

import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.CompanyData;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

/**
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/30 上午10:50
 */
public interface CityMapper {

    public ArrayList<Company> getCompanyIdByCityId(@Param("city_id")Integer city_id);

    public ArrayList<CompanyData> getCompanyDataByCompanyIdStatus0(@Param("company_id")Integer company_id);

    public void cityCheckPass(@Param("id") Integer id);

    public void cityCheckFail(@Param("id") String id,@Param("reason") String reason);
}
