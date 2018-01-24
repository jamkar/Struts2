package com.mkyong.action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ApplicationAware;

import java.util.Map;

public abstract class BaseAction extends ActionSupport implements
        ApplicationAware {

    private Map<String, Object> application;


    @Override
    public void setApplication(Map<String, Object> application) {
        this.application = application;
    }

    public Map<String, Object> getApplication() {
        return application;
    }
}
