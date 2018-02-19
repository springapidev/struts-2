/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package example;

import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

public class UserAction extends ActionSupport {

    String name;
    String pass;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    @Override
    public String execute() {

        HttpServletRequest req = ServletActionContext.getRequest();
        setName(req.getParameter("name"));
        setPass(req.getParameter("pass"));
        UserDao ud = new UserDao();
        if (ud.checkLogin(getName(), getPass())) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    @Override
    public void validate() {

        if ("".equals(getName())) {
            addFieldError("name", "Name must be filled !");
        }
        if ("".equals(getPass())) {
            addFieldError("pass", "Password must be filled !");
        }
    }

}
