<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: karen
  Date: 12/22/17
  Time: 2:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User</title>
</head>
<body>

    <p>
        User: <s:property value="user.email"/>
    </p>


    <s:set var="email" value="user.email"/>
    <p>
        email: <s:property value="%{email}"/>
    </p>

    <p>
        <s:textfield name="email"/>
    </p>

    <s:url action="iteratorKFCAction" namespace="/iterator" var="iter" >
    </s:url>

    <s:a href="%{iter}">Iterator</s:a>

    <p>
        Message from resources: <s:property value="getText('global.username')"/>
    </p>

    <s:text name="global.username"/>

    <s:set var="abc" value="user.email"/>

    <p>
        Value Stack: <s:property value="#application.appName"/>
    </p>


</body>
</html>
