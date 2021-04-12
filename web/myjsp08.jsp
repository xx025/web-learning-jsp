<%@ page import="java.util.Enumeration" %>
<%@ page pageEncoding="UTF-8" %>
<html>
<body>
<%
    /*application隐含对象*/
    /*获取在web.xml文件中配置的全局参数
     * */
    String str = application.getInitParameter("data1");
    out.println(str);

    //获得所有的name
    Enumeration<String> en = application.getInitParameterNames();
    while (en.hasMoreElements()) {
        out.println(en.nextElement());
    }

%>
<hr>
<%--使用application域对象存数据--%>
<%
    application.setAttribute("age", 1000);
    application.setAttribute("age1", 2000);
%>
</body>
</html>