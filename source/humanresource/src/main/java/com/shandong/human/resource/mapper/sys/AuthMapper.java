package com.shandong.human.resource.mapper.sys;

import com.shandong.human.resource.domain.Auth;

import java.util.List;

public interface AuthMapper {
    public int insertAuth(Auth auth);
    public List<Auth> selectAll();
    public Auth selectByID(int id);
}
