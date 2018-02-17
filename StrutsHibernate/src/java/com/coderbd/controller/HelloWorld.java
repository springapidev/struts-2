package com.coderbd.controller;

import com.coderbd.entity.Test;
import com.coderbd.service.TestService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * <code>Set welcome message.</code>
 */
public class HelloWorld extends ActionSupport {

    private TestService testService;
    private Test test;

    @Override
    public String execute() throws Exception {
        testService = new TestService();
        test = new Test();
        test.setName(name);
        if (test != null) {
            testService.persist(test);
        }
        setMessage("data insert Succeess!");
        return SUCCESS;
    }

    /**
     * Provide default valuie for Message property.
     */
    public static final String MESSAGE = "HelloWorld.message";

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

    public Test getTest() {
        if (test == null) {
            test = new Test();
        }
        return test;
    }

    public void setTest(Test test) {
        this.test = test;
    }

    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
