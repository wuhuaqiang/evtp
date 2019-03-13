package com.hhdl.evtp.model;

import com.baomidou.mybatisplus.annotations.TableName;

/**
 * Created by linwf on 2018/11/26.
 */
@TableName("fabric_use")
public class UserModel {
    private String name; //用户名
    private String account; //帐户
    private String password; //密码

    public String getName() {
        return this.name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getAccount() {
        return this.account;
    }
    public void setAccount(String account) {
        this.account = account;
    }
    public String getPassword() {
        return this.password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
}
