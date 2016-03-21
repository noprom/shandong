package com.shandong.human.resource.service.sys.impl;

import com.shandong.human.resource.domain.User;
import com.shandong.human.resource.mapper.sys.UserMapper;
import com.shandong.human.resource.service.sys.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by syc on 3/19/16.
 */
@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper service;

    /**
     * @brief 获取用户数
     * @return
     */
    public int getCount(){
        return service.getCount();
    }

    public List<User> selectAll() {
        return service.selectAll();
    }

    public List<User> selectByPos(Integer offset, Integer size) {
        Map<Object,Object> info = new HashMap<Object, Object>();
        info.put("offset",offset);
        info.put("size",size);
        return service.selectByPos(info);
    }

    public int insertUser(User user) {
        return service.insertUser(user);
    }

    public int deleteByID(Integer id) {
        return service.deleteByID(id);
    }

    public User selectByNamePwd(String username, String password) {
        Map<Object,Object> info = new HashMap<Object, Object>();
        info.put("username",username);
        info.put("password",password);
        return service.selectByNamePwd(info);
    }
}
