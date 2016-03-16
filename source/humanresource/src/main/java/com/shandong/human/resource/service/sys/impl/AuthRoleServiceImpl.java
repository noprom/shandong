package com.shandong.human.resource.service.sys.impl;

import com.shandong.human.resource.domain.AuthRole;
import com.shandong.human.resource.mapper.sys.AuthRoleMapper;
import com.shandong.human.resource.service.sys.AuthRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by syc on 3/16/16.
 */
@Service
public class AuthRoleServiceImpl implements AuthRoleService{

    @Autowired
    private AuthRoleMapper service;

    public int insertAuthRole(int auth_id, int role_id) {
        Map<Object,Object> toInsert = new HashMap<Object, Object>();
        toInsert.put("auth_id",auth_id);
        toInsert.put("role_id",role_id);
        return service.insertAuthRole(toInsert);
    }

    public int deleteAuthRole(int auth_id, int role_id) {
        Map<Object,Object> toDelete = new HashMap<Object, Object>();
        toDelete.put("auth_id",auth_id);
        toDelete.put("role_id",role_id);
        return service.deleteAuthRole(toDelete);
    }

    public List<AuthRole> selectByRoleID(int role_id) {
        return service.selectByRoleID(role_id);
    }

    public int deleteByRoleID(int role_id) {
        return deleteByRoleID(role_id);
    }
}
