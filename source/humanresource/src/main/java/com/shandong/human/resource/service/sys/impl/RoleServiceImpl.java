package com.shandong.human.resource.service.sys.impl;

import com.shandong.human.resource.domain.Role;
import com.shandong.human.resource.mapper.sys.RoleMapper;
import com.shandong.human.resource.service.sys.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by syc on 3/17/16.
 */
@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    RoleMapper service;

    public List<Role> selectAll() {
        return service.selectAll();
    }

    public int insertRole(String name) {
        return service.insertRole(name);
    }

    public int deleteRole(Integer id) {
        return service.deleteRole(id);
    }

    public int selectByID(Integer id) {
        return service.selectByID(id);
    }
}
