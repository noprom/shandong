package com.shandong.human.resource.domain;



public class User {

    private int id;            //主键
    private String username;  //用户名
    private String password;  //MD5加密密码
    private int type;         //1:省用户，2:企业用户

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

}
