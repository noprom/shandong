package com.shandong.human.resource.service.sys;

import com.shandong.human.resource.domain.Auth;

import java.util.List;

/**
 * Created by syc on 3/15/16.
 */
public interface AuthService {
    public int insertAuth(Auth auth);
    public List<Auth> selectAll();
    public Auth selectByID(int id);
}
