package com.shandong.human.resource.mapper.sys;

import com.shandong.human.resource.domain.Company;
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
    //保存输入信息
    public void setCompanyInfo(Company company);

<<<<<<< HEAD
    List<Company> getCompanyNumberByCity();
=======
    public ArrayList<Company> isNull(int id);
    /**
     * 按条件查找Company
     *
     * @return
     */
    public Company getCompanyById(int id);
    /**
     * 更新Company
     */
    public void updateCompanyInfo(Company company);
>>>>>>> 15ac3b8b785a47c52ec8100202032fb5b31ea7c9
}
