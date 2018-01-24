<%--
  Created by IntelliJ IDEA.
  User: karen
  Date: 12/20/17
  Time: 4:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
    <title>Title</title>

    <style type="text/css">
        .errors {
            background-color:#FFCCCC;
            border:1px solid #CC0000;
            width:400px;
            margin-bottom:8px;
        }
        .errors li{
            list-style: none;
        }
    </style>

</head>
<body>
    <h1>Struts 2 Hello World Example</h1>

    <s:if test="hasActionErrors()">
        <div class="errors">
            <s:actionerror/>
        </div>
    </s:if>

    <s:form action="validateUser">
        <s:textfield key="global.username" name="username"/>
        <s:password key="global.password" name="password" />
        <s:submit key="global.submit" name="submit" />

        <s:textfield key="abc" />
    </s:form>

    <s:set var="username" value="abcValue" scope="application"/>

    <%-- HTML form --%>
    <%--<form action="/action_page.php">--%>
        <%--First name:<br>--%>
        <%--<input type="text" name="firstname" value="Mickey">--%>
        <%--<br>--%>
        <%--Last name:<br>--%>
        <%--<input type="text" name="lastname" value="Mouse">--%>
        <%--<br><br>--%>
        <%--<input type="submit" value="Submit">--%>
    <%--</form>--%>

</body>
</html>
