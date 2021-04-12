<%@ page pageEncoding="UTF-8" %>
<html>
<body>

a=<%=pageContext.getAttribute("a")%>
b=<%=request.getAttribute("b")%>
c=<%=application.getAttribute("c")%>
d=<%=session.getAttribute("d")%>
<%--
1. 只访问Myjsp10.jsp a=1 b=2 c=3
2. 不转发，先访问MYjsp10,再访问myjsp11,jsp a=null b=null c=3
3. 转发，访问myjsp10.jsp 转发到myjsp11.jsp a=null b=2 c=3
4. 不转发，先访问myjsp10.jsp 再访问myjsp11.jsp
            a=null b=null c=3 d=4
        然后关闭浏览器，重新打开浏览器访问Myjsp11.jsp
            a=null b=null c=3 d=null
5. 不转发，先访问Myjsp10.jsp 再访问myjsp11.jsp
        a=null b=null c=3 d=4
        重新打开一个新浏览器页面访问myjsp11.jsp (相当于开启了一个新的会话)
        a=null b=null c=3 d=null

--%>
</body>
</html>