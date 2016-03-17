package com.shandong.human.resource.domain;

/**
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/14 9:37
 */

public class UserRole {
    private int user_id;  //用户id
    private int role_id;  //角色id

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }
}
