<%@ page import="java.util.HashMap" %>
<%@ page import="com.lddx.javabean.Student" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<html>
<body>

<h3>向域对象中增加属性</h3>
<%
    pageContext.setAttribute("name", "张三");
%>
${name}
<c:out value="${name}"></c:out>
<hr>
<%--使用c：set向域对象中增加属性--%>
<c:set var="name1" value="李四" scope="page"></c:set>
<c:set var="name2" value="王武" scope="request"></c:set>
<c:set var="name3" value="小红" scope="session"></c:set>
<c:set var="name4" value="小张" scope="application"></c:set>

${name1}
${name2}
${name3}
${name4}
${pageScope.name1}
${requestScope.name2}
${sessionScope.name3}
${applicationScope.name4}


<hr>
<h3>向map集合中增加修改键值对 key value</h3>

<%
    HashMap<String, String> map = new HashMap<String, String>();
    map.put("name", "张三");
    map.put("name1", "李四");
    //将map放到域对象中，el表达式才能获取到数据
    pageContext.setAttribute("map", map);
%>
${map}
${pageScope.map}
<%=pageContext.getAttribute("map")%>

<%--使用c:set修改mao集合中的键值对--%>
<c:set target="${map}" property="name1" value="小红"></c:set>
<br>
${map}

<%--使用cset往集合中添加键值对--%>
<c:set target="${map}" property="name2" value="王五"></c:set>

<br>
${map}

<hr>
<h3>修改javabean的属性</h3>
<%
    Student stu = new Student();
    stu.setId(1001);
    stu.setName("张三");
    stu.setAge(30);
    request.setAttribute("stu", stu);

%>
<%--使用el表达式获取javabean中的属性--%>
${stu.id}
${stu.name}
${stu.age}
<br>
${stu}
<%--使用c:set修改javabean的属性--%>
<c:set target="${stu}" property="age" value="50"></c:set>

<br>
${stu}
</body>
</html>