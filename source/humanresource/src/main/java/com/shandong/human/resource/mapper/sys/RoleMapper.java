package com.shandong.human.resource.mapper.sys;

import com.shandong.human.resource.domain.Role;

import java.util.List;
import java.util.Map;

/**
 * Created by syc on 3/17/16.
 */
public interface RoleMapper {

    /**
     * @brief 获取所有角色
     * @return
     */
    public List<Role> selectAll();

    /**
     * @brief 插入一个角色
     * @param name 插入角色名
     * @return
     */
    public int insertRole(String name);

    /**
     * @brief 删除一个角色
     * @param id 待删除角色ID
     * @return
     */
    public int deleteRole(Integer id);

    /**
     * @brief 按照id查询角色
     * @param id 待查询角色id
     * @return
     */
    public int selectByID(Integer id);

    public Integer getCount();

    public  List<Role> selectByPos(Map<Object,Object> pos);
}
