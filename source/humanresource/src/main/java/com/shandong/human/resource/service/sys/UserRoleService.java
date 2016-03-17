package com.shandong.human.resource.service.sys;

import com.shandong.human.resource.domain.UserRole;

import java.util.List;
import java.util.Map;

/**
 * Created by syc on 3/17/16.
 */
public interface UserRoleService {

    /**
     * @brief 获取所有用户角色信息
     * @return
     */
    public List<UserRole> getAll();

    /**
     * @brief 获取指定用户的角色信息
     * @param id 用户id
     * @return
     */
    public List<UserRole> getRoleByUserID(Integer id);

    /**
     * @brief 插入以个用户角色
     * @param user_id 用户id
     * @param role_id 角色id
     * @return
     */
    public int insertUserRole(int user_id,int role_id);

    /**
     * @brief 删除一个用户角色
     * @param user_id 用户id
     * @param role_id 角色id
     * @return
     */
    public int delectUserRole(int user_id,int role_id);

    /**
     * @brief 删除一个用户的所有角色
     * @param user_id
     * @return
     */
    public int delectByUserID(Integer user_id);
}
