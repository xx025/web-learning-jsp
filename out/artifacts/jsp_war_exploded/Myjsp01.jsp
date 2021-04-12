<%@ page import="java.util.Date" %>
<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%=3.14%>
<br>
<%=100 + 100%>
<br>
圆周率为：<%=Math.PI%>
<br>
最大值：<%=Math.max(100, 200.5)%>
<br>
jsp中写java代码：jsp的脚本片段写法


<%
    int a = 2;
    int b;
    b = 5;
    System.out.println(a + b);
    out.println(a + b);

%>
<br>
a=<%=a%>
<br>
b=<%=b%>
<br>
a=<%out.println(a);%>
<br>
b=<%out.println(b);%>


<%
    for (int i = 0; i < 10; i++) {
%>
<br>
<a href=" http://ww.baidu.com"> 去百度 </a>

<%
    }
%>

<br>

系统时间为：<% Date date = new Date();
    out.println(date);%>
<br>
产生1-100之间的随机数：
<%
    Random r = new Random();

    int num = r.nextInt(100);
%>


<%--include指令--%>
<%@include file="index.jsp" %>

<br>
<%@include file="MyHtml.html" %>

<br>
<%--JSP中加注释--%>
<!--JSP中加注释-->
我的年龄为：
<%
    int age = 30;
%>

<%=age%>
</body>
</html>
