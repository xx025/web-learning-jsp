<%@ page pageEncoding="UTF-8" %>
<html>
<body>
<%--EL表达式输出简单的运算结果--%>
<%--1. 算数运算--%>
${1+1}
${3.14}
<br>
<%--java代码写法--%>
<%=1 + 1%>
<%=3.14%>

<br>
<%--java代码写法2--%>
<% out.println(1 + 1);%>
<% out.println(3.14);%>

<hr>

<%--2. 关系运算符和逻辑运算符--%>
${3>2}
${3>2 && 1<5}
${ !(3>2)}

<%
    int a = 10;
    int b = 20;
    String str = "abc";
    String str1 = null;

    //定义的变量直接用EL表达式获取不到，可以将变量放入域对象中，el表达式可以从域对象中获取存储的变量
    pageContext.setAttribute("p1", a);
    pageContext.setAttribute("p2", b);
    pageContext.setAttribute("p3", str);
    pageContext.setAttribute("p4", str1);
%>

<%--java 代码的方式--%>
<%=a%>
<%=b%>
<%=str%>

<%--el表达式--%>
${a}
${b}
${str}
<%--上面el获取变量的值的方式获取不到--%>

<br>
<%--el表达式默认从域对象中获取变量的值--%>
${p1}
${p2}
${p3}
<br>
<%--el进行比较和逻辑运算--%>
${p1>p2}<%--false--%>
${p1==10}<%--true--%>

${p3=="abc"}
${p3!="abc"}

<hr>
str:${p3}
str:${p4}
<br>
<%--判断p3是否为空--%>
${empty p3}
<%--判断p4是否为空--%>
${empty p4}
</body>
</html>