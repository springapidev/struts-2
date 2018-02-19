/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.coderbd;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author user
 */
public class Login extends ActionSupport {

    private String username;
    private String password;

    public String execute() throws Exception {
        if (username.equals("admin") && password.equals("1234")) {
            return SUCCESS;
        } else {
            return ERROR;
        }
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
