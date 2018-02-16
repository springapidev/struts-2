package com.coderbd;

import com.opensymphony.xwork2.ActionSupport;

/**
 * <code>Set welcome message.</code>
 */
public class HelloWorld extends ActionSupport {

    @Override
    public String execute() throws Exception {
        if (userName.equals("admin") && password.equals("1234")) {
            setMessage(getUserName());
            System.out.println("Username::: " + userName);
            return SUCCESS;
        } else {
            return ERROR;
        }
    }
    /**
     * Field for Message property.
     */
    private String message;

    /**
     * Return Message property.
     *
     * @return Message property
     */
    public String getMessage() {
        return message;
    }

    /**
     * Set Message property.
     *
     * @param message Text to display on HelloWorld page.
     */
    public void setMessage(String message) {
        this.message = message;
    }

    private String userName;
    private String password;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
