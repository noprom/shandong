package com.shandong.human.resource.mapper.sys;

import com.shandong.human.resource.domain.AuthRole;

import java.util.List;
import java.util.Map;

/**
 * Created by syc on 3/16/16.
 */
public interface AuthRoleMapper {
    /**
     * @brief 插入角色权限
     * @param authRole 待插入的角色权限
     * @return
     */
    public int insertAuthRole(Map<Object,Object> authRole);

    /**
     * @brief 删除角色权限
     * @param authRole 待删除的角色权限
     * @return
     */
    public int deleteAuthRole(Map<Object,Object> authRole);

    /**
     * @brief 根据id查询角色所有权限
     * @param role_id 待查询角色id
     * @return
     */
    public List<AuthRole> selectByRoleID(int role_id);

    /**
     * @brief 删除角色的所有权限
     * @param role_id 待删除角色id
     * @return
     */
    public int deleteByRoleID(int role_id);

}
