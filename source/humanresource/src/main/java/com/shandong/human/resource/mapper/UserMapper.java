package com.shandong.human.resource.mapper;

import com.shandong.human.resource.domain.User;
import org.apache.ibatis.annotations.Param;

/**
 * Created by constantine on 16/3/8.
 */

public interface UserMapper {

    /**
     * 登陆
     *
     * @return
     */
    public User login(@Param("username") String username, @Param("password") String password);
}
