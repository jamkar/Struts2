<%--
  Created by IntelliJ IDEA.
  User: karen
  Date: 12/20/17
  Time: 6:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Welcome</title>

    <style type="text/css">
        .welcome {
            background-color:#DDFFDD;
            border:1px solid #009900;
            width:200px;
        }
        .welcome li{
            list-style: none;
        }
    </style>

</head>
<body>
    <h1>Struts 2 Hello World Example</h1>

    <%--<h2>--%>
        <%--Hello--%>
        <%--<s:property value="username"/>--%>
    <%--</h2>--%>

    <s:if test="hasActionMessages()">
        <div class="welcome">
            <s:actionmessage/>
        </div>
    </s:if>

    <h2>
        <s:property value="getText('welcome.hello')" />
        <s:property value="username" />
    </h2>

</body>
</html>
