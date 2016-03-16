package com.shandong.human.resource.mapper.sys;

import com.shandong.human.resource.domain.AuthRole;

import java.util.List;

/**
 * Created by syc on 3/16/16.
 */
public interface AuthRoleMapper {
    /**
     * @brief 插入角色权限
     * @param authRole 待插入的角色权限
     * @return
     */
    public int insertAuthRole(AuthRole authRole);
    public int deleteAuthRole(AuthRole authRole);
    public List<AuthRole> selectByRoleID(int id);
    public AuthRole selectPrecisely(AuthRole authRole);
}
