<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>

<html>
<body>

<h3>输出常量</h3>

<%--java代码的方式--%>
<%=123%>
<%
    out.println(123);
%>
<%--el表达式形式--%>
${123}

<%--jstl标准标签库的形式--%>
<c:out value="123"></c:out>


<h3>输出作用域中存储的数据</h3>
<%
    String name = "张三";
    pageContext.setAttribute("name", name);
    session.setAttribute("name1", "李四");
    request.setAttribute("date", new Date());

%>
<%--java代码的方式获取--%>
<%=pageContext.getAttribute("name")%>
<%=session.getAttribute("name1")%>
<%=request.getAttribute("date")%>
<br>
<%--el表达式的方式获取--%>
${pageScope.name}
${name1}
${date}
<br>
<%--使用c:out的方式来获取--%>
<c:out value="${name}"></c:out>
<c:out value="${name1}"></c:out>
<c:out value="${date}"></c:out>

<hr>
<h3>转义输出</h3>
<c:out value="<a href='http://www.baidu.com/'>跳转百度</a>"></c:out>
<c:out value="<a href='http://www.baidu.com/'>跳转百度</a>" escapeXml="false"></c:out>

<c:out value="${m}" default="你好"></c:out>
</body>
</html>