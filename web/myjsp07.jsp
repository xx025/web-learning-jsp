<%@ page import="java.util.Date" %>
<%@ page pageEncoding="UTF-8" %>
<html>
<body>
<%-- 使用response隐含对象--%>
<%--1. 页面自刷新--%>
<%
    //    response.setHeader("refresh", "1");
    response.setHeader("refresh", "5;url=http://www.baidu.com");
%>
当前系统时间为：<%=new Date()%>
</body>
</html>