package com.shandong.human.resource.domain;

import java.security.Principal;

/**
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/14 9:20
 */

public class AuthRole {
    private int auth_id;    //权限id
    private int role_id;    //角色id

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public int getAuth_id() {
        return auth_id;
    }

    public void setAuth_id(int auth_id) {
        this.auth_id = auth_id;
    }
}
