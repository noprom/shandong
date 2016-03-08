package com.shandong.human.resource.service.impl;

import com.shandong.human.resource.domain.User;
import com.shandong.human.resource.mapper.UserMapper;
import com.shandong.human.resource.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by constantine on 16/3/8.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    /**
     * 登陆
     *
     * @param username
     * @param password
     * @return
     */
    public User login(String username, String password) {
        return userMapper.login(username, password);
    }
}
