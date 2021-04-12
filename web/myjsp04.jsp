<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2021-04-08
  Time: 上午 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--JSP的隐藏对象：request对象--%>
<%--创建Cookie--%>

<%
    Cookie cookie = new Cookie("a", "1");
    Cookie cookie1 = new Cookie("name", URLEncoder.encode("张三", "utf-8"));

    //添加Cookie
    response.addCookie(cookie);
    response.addCookie(cookie1);
%>
</body>
</html>
