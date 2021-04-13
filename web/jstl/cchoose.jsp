<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<%--使用c:choose标签进行多种情况的判断--%>
<%--<%--%>
<%--    int day = 1;--%>
<%--    pageContext.setAttribute("day", day);--%>
<%--%>--%>

<%--使用c:set 标签往域对象中设置属性值--%>
<c:set var="day" value="1" scope="page"></c:set>
${day}
<br>
<%--使用c:choose进行多种情况的判断--%>
<c:choose>
    <c:when test="${day==1}">
        今天是周一
    </c:when>
    <c:when test="${day==2}">
        今天是周二
    </c:when>
    <c:otherwise>
        今天不是周一也不是周二
    </c:otherwise>
</c:choose>
</body>

</html>