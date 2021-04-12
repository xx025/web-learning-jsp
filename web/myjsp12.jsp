<%@ page pageEncoding="UTF-8" %>
<html>
<body>
<%--page隐含对象--%>

<%=page.getClass()%>
<%--
    class org.apache.jsp.myjsp12_jsp
    true
--%>
<br>
<%=page.equals(this)%>
</body>
</html>