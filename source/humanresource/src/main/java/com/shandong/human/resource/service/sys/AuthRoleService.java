package com.shandong.human.resource.service.sys;

import com.shandong.human.resource.domain.AuthRole;
import com.shandong.human.resource.domain.User;

import java.util.List;
import java.util.Map;

/**
 *
 * Created by syc on 16/3/16.
 */
public interface AuthRoleService {
    /**
     * @brief 插入角色权限
     * @param auth_id 角色id
     * @param role_id 权限id
     * @return
     */
    public int insertAuthRole(int auth_id, int role_id);

    /**
     * @brief 删除角色权限
     * @param auth_id 角色id
     * @param role_id 权限id
     * @return
     */
    public int deleteAuthRole(int auth_id, int role_id);

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
