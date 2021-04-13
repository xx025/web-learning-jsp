<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>

<%--c:remove标签：用于删除四个域对象中的属性--%>

<%
    pageContext.setAttribute("name1", "张三");
    request.setAttribute("name2", "李四");
    session.setAttribute("name3", "小武");
    application.setAttribute("name4", "小红");
%>

<%--获取域对象中存储的数据--%>
${name1}
${name2}
${name3}
${name4}
<br>
${pageScope.name1}
${requestScope.name2}
${sessionScope.name3}
${applicationScope.name4}
<br>
<c:out value="${name1}"></c:out>
<br>
<%=pageContext.getAttribute("name1")%>
<br>
<%
    out.println(pageContext.getAttribute("name1"));
%>

<%--使用c:remove 删除域对象中的属性--%>
<c:remove var="name1" scope="page"></c:remove>
<br>
<c:remove var="name4"></c:remove>
<br>
1:${name1}
2:${name2}
3:${name3}
4:${name4}

</body>
</html>