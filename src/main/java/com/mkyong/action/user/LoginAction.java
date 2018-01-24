package com.mkyong.action.user;

import com.mkyong.action.BaseAction;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;

public class LoginAction extends BaseAction {

    private String username;
    private String password;

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

    @Override
    public String execute() {
        ActionContext context = ActionContext.getContext();
        String abc = (String)context.get("abc");
        System.out.println("abc from session scope: " + username);

        return SUCCESS;
    }

//    @Override
//    public void validate() {
//        if (isInvalid(getUsername())) {
//            addActionError(getText("username.required"));
//            return;
//        }
//        if (isInvalid(getPassword())) {
//            addActionError(getText("password.required"));
//            return;
//        }
//
//        if ("mkyong".equals(getUsername())) {
//            addActionMessage("You are a valid user!");
//        } else {
//            addActionError("I don't know you, don't try to hack me!");
//        }
//    }

    private boolean isInvalid(String value) {
        return (value == null || value.isEmpty());
    }
}
