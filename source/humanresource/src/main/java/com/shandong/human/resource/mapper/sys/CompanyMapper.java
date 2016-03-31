package com.shandong.human.resource.mapper.sys;

import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.CompanyData;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

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
    Company getCompanyById(@Param("id") Integer id);

    /**
     * 获取所有Company
     *
     * @return
     */
    ArrayList<Company> getAllCompany();

    /**
     * 按条件查找Company
     *
     * @return
     */
    ArrayList<Company> getCompanyByCondition(@Param("city_id")String city_id, @Param("area_id")String area_id,
                                                    @Param("name")String name, @Param("code")String code,
                                                    @Param("contact")String contact);
    //保存输入信息
    void setCompanyInfo(Company company);

    List<Company> getCompanyNumberByCity();
    ArrayList<Company> isNull(int id);
    /**
     * 按条件查找Company
     *
     * @return
     */
    Company getCompanyById(int id);

    /**
     * 更新Company
     */
    void updateCompanyInfo(Company company);


    /**
     * 根据name获取CompanyID
     */
    Company getCompanyIdByName(@Param("name")String name);


    /**
     * 根据公司名模糊查询
     *
     * @return
     */
    List<Company> fuzzySearchByName(String name);

    /**
     * 根据公司所在区查询
     *
     * @param  area_id
     * @return
     */
    List<Company> selectByAreaID(Integer area_id);

    /**
     * 根据公司地址模糊查询
     *
     * @return
     */
    List<Company> fuzzySearchByAddress(String address);


    /**
     * 根据公司业务模糊查询
     *
     * @return
     */
    List<Company> fuzzySearchByBusiness(String business);
}
