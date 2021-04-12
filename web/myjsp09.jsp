<%@ page pageEncoding="UTF-8" %>
<html>
<body>
<%--从application取数据--%>
<%
    Integer age = (Integer) application.getAttribute("age");

    out.println("age=" + age);

    Integer age1 = (Integer) application.getAttribute("age1");

    out.println("age1=" + age1);
%>
</body>
</html>