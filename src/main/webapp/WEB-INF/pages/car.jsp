<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: karen
  Date: 12/21/17
  Time: 6:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>

    <p>
        <s:url value="http://google.com" var="google"/>
        <s:a href="%{google}">Google</s:a>
    </p>

    <%-- <%=request.getContextPath()%> --%>

    <p>
        <s:url action="/iterator/iteratorKFCAction" var="iterAction"/>
        <s:a href="%{iterAction}">iteratorKFCAction</s:a>
    </p>

    <%--<s:set value="cars" var="car"/>--%>

    <ul>
        <s:iterator value="cars" var="car">
            <li><s:property value="color"/>
                <s:property value="length"/>
                <s:property value="doors"/>
            </li>
            <%--<li>  %{car} </li>--%>
        </s:iterator>
    </ul>

</body>
</html>
