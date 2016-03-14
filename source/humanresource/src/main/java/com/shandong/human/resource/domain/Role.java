package com.shandong.human.resource.domain;

/**
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/14 9:31
 */

public class Role {
    private int id;         //主键
    private String name;    //角色名
    private short status;  //状态,-1: 禁用，1:正常

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public short getStatus() {
        return status;
    }

    public void setStatus(short status) {
        this.status = status;
    }
}
