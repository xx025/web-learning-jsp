<%@ page pageEncoding="UTF-8" %>
<html>
<body>
<%--使用pageContext域对象存取值--%>
<%--对比request和applictaion域对象--%>

<%
    pageContext.setAttribute("a", 1);//作用域当前页面
    request.setAttribute("b", 2);//一个请求,可以通过转发实现其他页面访问
    application.setAttribute("c", 3);//服务器

    session.setAttribute("d", 4);

    //使用转发技术转发到myjsp11.jsp页面
//    request.getRequestDispatcher("myjsp11.jsp").forward(request, response);

%>

a=<%=pageContext.getAttribute("a")%>
b=<%=request.getAttribute("b")%>
c=<%=application.getAttribute("c")%>
d=<%=session.getAttribute("d")%>


</body>
</html>