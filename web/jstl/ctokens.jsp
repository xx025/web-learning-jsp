<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<%--c:forTokens标签的使用--%>
<%--<c:set var="str" value="www.baidu.com" scope="request"></c:set>--%>
<c:set var="str" scope="request">www.baidu.com</c:set>
<%--java代码--%>
<%--<%--%>
<%--    request.setAttribute("str","www.baidu.com");--%>
<%--%>--%>
<%--使用el表达式--%>
${str}
<br>
<%--使用c:forTokens标签-
items="" 所要操作的那个字符串
delims="" 定义符号对字符串进行分割
var="" 将字符串按照定义的符号分割以后得到的每一部分赋值给var=""的值
forTokens 可以将var的值循环输出
--%>
<c:forTokens items="${str}" delims="." var="s">
    ${s} <br>
</c:forTokens>

<%--使用java代码的方式将str的内容进行分割--%>
<br>
<%
    String str = (String) request.getAttribute("str");
    out.println("str=" + str);
    //str =www.baidu.com
    String[] ss = str.split("\\.");
    out.println(Arrays.toString(ss));
    for (String s : ss
    ) {
        out.println(s + "<br>");


    }
%>

</body>
</html>