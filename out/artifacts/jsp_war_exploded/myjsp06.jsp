<%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2021-04-08
  Time: 上午 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--JSP的隐含对象：response对象--%>
<%--1. 重定向--%>
<%

    //    response.sendRedirect("index.jsp");
//response.sendRedirect("/emp_jsp/list");

    response.sendRedirect("http://www.baidu.com/");
%>
</body>
</html>
