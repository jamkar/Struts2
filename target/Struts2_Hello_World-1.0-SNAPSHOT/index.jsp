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
</head>
<body>
    <h1>Struts 2 Hello World Example</h1>

    <s:form action="Welcome">
        <s:textfield name="username" label="Username"/>
        <s:password name="passowrd" label="Password" />
        <s:submit/>
    </s:form>

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
