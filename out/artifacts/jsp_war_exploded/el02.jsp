<%@ page import="java.util.Arrays" %>
<%@ page pageEncoding="UTF-8" %>
<html>
<body>
<%--el表达式获取请求参数--%>

${param.id}
${paramValues.a}
${paramValues.a[0]}
${paramValues.a[1]}
${paramValues.a[2]}
<hr>
<%--java代码方式获取请求参数--%>
<%
    String strId = request.getParameter("id");
    out.println(strId);

    String[] ss = request.getParameterValues("a");
    out.println(Arrays.toString(ss));

%>

</body>
</html>

