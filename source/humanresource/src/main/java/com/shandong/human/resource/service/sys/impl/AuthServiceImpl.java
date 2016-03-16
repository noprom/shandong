package com.shandong.human.resource.service.sys.impl;

import com.shandong.human.resource.domain.Auth;
import com.shandong.human.resource.mapper.sys.AuthMapper;
import com.shandong.human.resource.service.sys.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by syc on 3/15/16.
 */
@Service
@Transactional(isolation = Isolation.DEFAULT, rollbackFor = Exception.class)
public class AuthServiceImpl implements AuthService{

    @Autowired
    private AuthMapper service;

    public int insertAuth(Auth auth) {
        return service.insertAuth(auth);
    }

    public List<Auth> selectAll() {
        return service.selectAll();
    }

    public Auth selectByID(int id) {
        return service.selectByID(id);
    }

    public int deleteByID(int id) {
        return service.deleteByID(id);
    }
}
