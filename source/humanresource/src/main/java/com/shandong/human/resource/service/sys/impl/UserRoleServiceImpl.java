package com.shandong.human.resource.service.sys.impl;

import com.shandong.human.resource.domain.UserRole;
import com.shandong.human.resource.mapper.sys.UserRoleMapper;
import com.shandong.human.resource.service.sys.UserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by syc on 3/17/16.
 */
@Service
public class UserRoleServiceImpl implements UserRoleService{

    @Autowired
    UserRoleMapper service;

    public List<UserRole> getAll() {
        return service.getAll();
    }

    public List<UserRole> getRoleByUserID(Integer id) {
        return service.getRoleByUserID(id);
    }

    public int insertUserRole(int user_id, int role_id) {
        Map<Object,Object> toInsert = new HashMap<Object, Object>();
        toInsert.put("user_id",user_id);
        toInsert.put("role_id",role_id);
        return service.insertUserRole(toInsert);
    }

    public int delectUserRole(int user_id, int role_id) {
        Map<Object,Object> toDelete = new HashMap<Object, Object>();
        toDelete.put("user_id",user_id);
        toDelete.put("role_id",role_id);
        return service.delectUserRole(toDelete);
    }
}
