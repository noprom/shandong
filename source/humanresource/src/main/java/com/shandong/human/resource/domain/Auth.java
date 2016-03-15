package com.shandong.human.resource.domain;

/**
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/14 9:09
 */
public class Auth {
    private int id;               //主键
    private String name;          //权限名称
    private String url;           //权限对应的访问url
    private int pid;              //上级权限
    private int level;            //权限等级，1:一级菜单,2:二级菜单,3:三级菜单,4:页面按钮级别的权限

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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }
}
