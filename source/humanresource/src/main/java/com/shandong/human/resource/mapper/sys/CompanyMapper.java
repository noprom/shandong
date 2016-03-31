package com.shandong.human.resource.mapper.sys;

import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.CompanyData;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

/**
 * 公司数据mapper
 * <p>
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
    ArrayList<Company> getCompanyByCondition(@Param("city_id") String city_id, @Param("area_id") String area_id,
                                             @Param("name") String name, @Param("code") String code,
                                             @Param("contact") String contact);

    /**
     * 保存输入信息
     *
     * @param company
     */
    void setCompanyInfo(Company company);

    /**
     * 城市用户获得公司数据总数
     *
     * @return
     */
    List<Company> getCompanyNumberByCity();

    /**
     * 是否非空
     *
     * @param id
     * @return
     */
    ArrayList<Company> isNull(int id);

    /**
     * 按条件查找Company
     *
     * @param id
     * @return
     */
    Company getCompanyById(int id);

    /**
     * 更新Company
     *
     * @param company
     */
    void updateCompanyInfo(Company company);

    /**
     * 根据name获取CompanyID
     *
     * @param name
     * @return
     */
    Company getCompanyIdByName(@Param("name") String name);
}
