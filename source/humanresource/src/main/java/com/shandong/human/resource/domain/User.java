package com.shandong.human.resource.domain;

/**
<<<<<<< HEAD
 * Created by constantine on 16/3/8.
 */
public class User {
    private int id;
    private String username;
    private String password;
    private int type;

    public int getType() {return type;}

    public void setType(int type) {this.type = type;}
=======
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/14 9:34
 */

public class User {
    private int id;            //主键
    private String username;  //用户名
    private String password;  //MD5加密密码
    private int type;         //1:省用户，2:企业用户
>>>>>>> ea68155f588b0ccbd32399a61191eebed4259bed

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
<<<<<<< HEAD
=======

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }
>>>>>>> ea68155f588b0ccbd32399a61191eebed4259bed
}
