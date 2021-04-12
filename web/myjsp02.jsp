<%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2021-04-08
  Time: 上午 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--JSP中的隐含对象：request对象--%>

<%--1. 获得请求参数--%>
id:<%=request.getParameter("id")%>
<br>
name:<%out.println(request.getParameter("name"));%>

<br>

<%--2. 作为域对象存取值--%>
<%
    request.setAttribute("age", 100);
    request.getRequestDispatcher("myjsp03.jsp").forward(request, response);
%>

</body>
</html>
