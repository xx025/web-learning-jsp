<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<%--使用c:if标签进行条件判断--%>
<%

%>

<%--test="" 写判断条件

    var 写入域时的属性名
    scope="" 声明将test的结果存到那个域中

--%>
<%--隐藏执行的代码
    pageContext.setAttribute("f","false")
 --%>
<c:if test="${3>2}" var="f" scope="page">
    hello
</c:if>

<%--取域对象中的数据--%>
${f}
${!f}
<br>
<c:if test="${!f}">
    olleh
</c:if>
</body>
</html>