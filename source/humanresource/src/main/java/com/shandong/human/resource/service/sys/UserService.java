package com.shandong.human.resource.service.sys;

import com.shandong.human.resource.domain.User;

import java.util.List;
import java.util.Map;

/**
 *
 * Created by syc on 16/3/19.
 */
public interface UserService {


    /**
     * @brief 获取用户数
     * @return
     */
    public int getCount();

    /**
     * @brief 查询所有用户
     * @return
     */
    public List<User> selectAll();

    /**
     * @brief 按位置查询
     * @param offset 起始位置
     * @param size 查询个数
     * @return
     */
    public List<User> selectByPos(Integer offset,Integer size);

    /**
     * @brief 插入用户
     * @param user 待插入用户
     * @return
     */
    public int insertUser(User user);

    /**
     * @brief 删除用户
     * @param id 待删除用户ID
     * @return
     */
    public int deleteByID(Integer id);

    /**
     * @brief 按用户名及密码查询用户
     * @param username
     * @param password
     * @return
     */
    public User selectByNamePwd(String username,String password);
}
