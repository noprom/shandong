package com.shandong.human.resource.domain;

/**
 * Created by constantine on 16/3/8.
 */
public class User {
    private int id;
    private String username;
    private String password;
    private int type;

    public int getType() {return type;}

    public void setType(int type) {this.type = type;}

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
}
