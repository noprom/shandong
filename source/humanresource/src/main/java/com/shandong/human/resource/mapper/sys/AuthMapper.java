package com.shandong.human.resource.mapper.sys;

import com.shandong.human.resource.domain.Auth;

import java.util.List;


/**
 * Brief: auth表管理dao
 * Author: syc
 * Date: 2016/3/15
 */
public interface AuthMapper {
    /**
     * @brief 向auth表中插入一个数据
     * @param auth
     * @return
     */
    public int insertAuth(Auth auth);

    /**
     * @brief 获取表中所有数据
     * @return
     */
    public List<Auth> selectAll();

    /**
     * @brief 根据id查询数据
     * @param id
     * @return
     */
    public Auth selectByID(int id);

    /**
     * @brief 根据ID删除数据
     * @param id
     * @return
     */
    public int deleteByID(int id);
}
