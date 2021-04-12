<%@ page import="com.lddx.javabean.Student" %>
<%@ page pageEncoding="UTF-8" %>
<html>
<body>
<%--使用el表达式获得javaBean中的属性--%>
<%
    Student stu1 = new Student();
    stu1.setId(1001);
    stu1.setAge(20);
    stu1.setName("张三");

    Student stu2 = new Student(1002, "李四", 24);
    pageContext.setAttribute("stu1", stu1);
    pageContext.setAttribute("stu2", stu2);
%>
<%--
使用EL表达式获取JavaBean中的属性值
${对象名.属性名}}--%>
id:${stu1.id}
age:${stu1.age}
name:${stu1.name}

<br>
id:${stu2.id}
age:${stu2.age}
name:${stu2.name}
</body>
</html>