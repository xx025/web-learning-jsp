<%@ page pageEncoding="UTF-8" %>
<html>
<body>

<%--使用EL表达式获取域对象中的数据--%>
<%
    pageContext.setAttribute("a", 100);
    request.setAttribute("b", 200);
    session.setAttribute("c", 300);
    application.setAttribute("d", 400);
%>

<%--使用java代码的方式获取数据--%>
<%=pageContext.getAttribute("a")%>
<%=request.getAttribute("b")%>
<%=session.getAttribute("c")%>
<%=application.getAttribute("d")%>

<%--使用EL表达式从域对象中获取数据--%>
${pageScope.a}
${requestScope.b}
${sessionScope.c}
${applicationScope.d}
<hr>
${a}
${b}
${c}
${d}

</body>
</html>