package com.shandong.human.resource.mapper.sys;

import com.shandong.human.resource.domain.User;

import java.util.List;
import java.util.Map;

/**
 * Created by syc on 3/19/16.
 */
public interface UserMapper {

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
     * @param pos pos.limit：起始位置 pos.size查询个数
     * @return
     */
    public List<User> selectByPos(Map<Object , Object> pos);

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
}
