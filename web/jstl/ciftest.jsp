<%@ page import="java.util.Random" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<%--
练习：新建ciftest.jsp页面

​			通过java代码定义变量a并赋值

​			使用c:if标签判断是奇数还是偶数并输出到页面上

--%>
<%
    Random r = new Random();
    pageContext.setAttribute("a", r.nextInt(100));
%>
${a}
<c:if test="${a%2==0}" var="f" scope="page">
    偶数
</c:if>

<c:if test="${!f}">
    奇数
</c:if>
</body>
</html>