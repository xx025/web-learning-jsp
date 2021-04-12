<%@ page import="org.w3c.dom.css.CSSCharsetRule" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2021-04-08
  Time: 上午 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--使用隐含对象获取Cookie--%>

<%
    Cookie[] sc = request.getCookies();

    for (Cookie c : sc
    ) {
        out.println(c.getName() + "," + URLDecoder.decode(c.getValue(), "utf-8"));
    }

%>
</body>
</html>
