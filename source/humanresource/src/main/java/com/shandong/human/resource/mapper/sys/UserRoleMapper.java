package com.shandong.human.resource.mapper.sys;

import com.shandong.human.resource.domain.UserRole;

import java.util.List;
import java.util.Map;

/**
 * 用户角色Mapper
 * <p>
 * Author: syc <522560298@qq.com>
 * Date: 3/17/16 下午1:21
 */
interface UserRoleMapper {

    /**
     * 获取所有用户角色信息
     *
     * @return
     */
    List<UserRole> getAll();

    /**
     * 获取指定用户的角色信息
     *
     * @param id 用户id
     * @return
     */
    List<UserRole> getRoleByUserID(Integer id);

    /**
     * 插入以个用户角色
     *
     * @param userRole 用户角色
     * @return
     */
    int insertUserRole(Map<Object, Object> userRole);

    /**
     * 删除一个用户角色
     *
     * @param userRole 用户角色
     * @return
     */
    int delectUserRole(Map<Object, Object> userRole);

    /**
     * 删除一个用户的所有角色
     *
     * @param user_id
     * @return
     */
    int delectByUserID(Integer user_id);
}
