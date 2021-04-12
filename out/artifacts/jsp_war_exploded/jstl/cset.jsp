<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<html>
<body>

<h3>向域对象中增加属性</h3>
<%
    pageContext.setAttribute("name", "张三");
%>
${name}
<c:out value="${name}"></c:out>
<hr>
<%--使用c：set向域对象中增加属性--%>
<c:set var="name1" value="李四" scope="page"></c:set>
<c:set var="name2" value="王武" scope="request"></c:set>
<c:set var="name3" value="小红" scope="session"></c:set>
<c:set var="name4" value="小张" scope="application"></c:set>

${name1}
${name2}
${name3}
${name4}
${pageScope.name1}
${requestScope.name2}
${sessionScope.name3}
${applicationScope.name4}
</body>
</html>