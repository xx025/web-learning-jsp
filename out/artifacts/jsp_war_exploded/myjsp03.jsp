<%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2021-04-08
  Time: 上午 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<%--使用request对象获取存储的值--%>

获得的年龄age为：<%=request.getAttribute("age")%>


<%

    out.println(request.getAttribute("age"));
%>
<br>

<%
    Integer age = (Integer) request.getAttribute("age");

    out.println(age);
%>
</body>
</html>
