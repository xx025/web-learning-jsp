<%@ page import="java.util.ArrayList" %>
<%@ page import="org.w3c.dom.ls.LSException" %>
<%@ page import="com.lddx.javabean.Student" %>
<%@ page import="java.util.List" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<%--c:foreach标签的使用--%>

<%
    for (int i = 0; i < 10; i++) {
        out.println(i);
    }
%>
<br>
<c:forEach begin="1" end="10" step="2" var="i">
    ${i}
</c:forEach>
<%--使用foreach对集合的数据进行迭代操作--%>
<%
    ArrayList<String> list = new ArrayList<String>();
    list.add("a");
    list.add("b");
    list.add("c");
    pageContext.setAttribute("list", list);
%>
<br>
${list}
<br>
<%--
items=“” 我们要循环的哪个集合
var="" 每一次循环从集合中取出的内容赋值给var定义的值，并将var="" 定义的值存储到域对象中
varStatus="" 循环的状态
--%>
<c:forEach items="${list}" var="str" varStatus="status">
    ${str} ${status.count}<br>
</c:forEach>
<br>
<%--往集合中存储javaBean类--%>
<%
    Student stu1 = new Student(1001, "张三", 30);
    Student stu2 = new Student(1002, "李四", 20);
    Student stu3 = new Student(1003, "王五", 10);

    ArrayList<Student> list1 = new ArrayList<Student>();
    list1.add(stu1);
    list1.add(stu2);
    list1.add(stu3);
    request.setAttribute("list1", list1);
%>
${list1}
<br>
<table border="1" cellspacing="0">
    <tr>
        <td>工号</td>
        <td>姓名</td>
        <td>年龄</td>

    </tr>
    <c:forEach items="${list1}" var="p">
        <tr>
            <td>${p.id}</td>
            <td>${p.name}</td>
            <td>${p.age}</td>
        </tr>
    </c:forEach>

</table>

<br>

<br>

<c:forEach begin="10"  end="100"  step="2" var="i">
    <c:if test="${i%3==0}" var="f" scope="page">
        <p style="color: crimson">${i}</p>
    </c:if>
    <c:if test="${!f}">
        <p> ${i}</p>
    </c:if>
</c:forEach>
</body>

</html>