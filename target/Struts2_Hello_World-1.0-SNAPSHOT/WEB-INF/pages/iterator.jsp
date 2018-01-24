<%--
  Created by IntelliJ IDEA.
  User: karen
  Date: 12/21/17
  Time: 5:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <h1>Struts 2 Iterator tag example</h1>

    <h2>Simple Iterator</h2>
    <s:iterator value="comboMeals">
        <li><s:property/></li>
    </s:iterator>

    <h2>Iterator with IteratorStatus</h2>
    <table>
        <s:iterator value="comboMeals" status="comboMealsStatus">
            <tr>
                <s:if test="#comboMealsStatus.even == true">
                    <td style="background: #CCCCCC"><s:property/></td>
                </s:if>
                <s:elseif test="#comboMealsStatus.first == true">
                    <td><s:property/> (This is first value) </td>
                </s:elseif>
                <s:else>
                    <td><s:property/></td>
                </s:else>
            </tr>
        </s:iterator>
    </table>

</body>
</html>
