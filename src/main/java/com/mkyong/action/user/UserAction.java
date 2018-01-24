package com.mkyong.action.user;

import com.mkyong.action.BaseAction;
import com.mkyong.dao.CarDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.DefaultTextProvider;
import com.opensymphony.xwork2.util.ValueStack;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import java.util.Map;
//
@Component
@Scope("prototype")
public class UserAction extends BaseAction {

    @Autowired
    private CarDao carDao;

    private User user;
    private String description;
    private int id;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String execute() {

        User user = new User();
        user.setEmail("karenjamalyan@gmail.com");
        user.setFirstName("Karen");
        user.setLastName("Jamalyan");
        setUser(user);

        Map<String, Object> application =  getApplication();
        application.put("appName", "MyApp");
        setApplication(application);

        ActionContext context = ActionContext.getContext();
        ValueStack valueStack = context.getValueStack();
        System.out.println(valueStack.size());
        System.out.println(valueStack.pop());
        System.out.println(valueStack.pop());

        return SUCCESS;
    }

    public String someMethod() {
        return "some";
    }

}
