package com.shandong.human.resource.mapper.sys;

import com.shandong.human.resource.domain.Company;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

/**
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/11 下午2:08
 */
public interface CompanyMapper {


    /**
     * 根据id获得公司详情
     *
     * @param id id
     * @return company
     */
    public Company getCompanyById(@Param("id") Integer id);

    /**
     * 获取所有Company
     *
     * @return
     */
    public ArrayList<Company> getAllCompany();

    /**
     * 按条件查找Company
     *
     * @return
     */
    public ArrayList<Company> getCompanyByCondition(@Param("city_id")String city_id, @Param("area_id")String area_id,
                                                    @Param("name")String name, @Param("code")String code,
                                                    @Param("contact")String contact);
//    保存输入信息
    public void setCompanyInfo(Company company);
}
