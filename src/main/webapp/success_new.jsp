<%@ page import="java.time.LocalDate" %><%--
  Created by IntelliJ IDEA.
  User: Notebook
  Date: 21.06.2023
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%--это есть деректива--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%! String getLoginWithDotots(String parametr){
    if(parametr.length()<=3){
        return parametr;
    }
    return parametr.substring(0,3) + "...";
}%>
<% %>
<head>
    <title>Success</title>
</head>
<body>
<H1>Login: <%=request.getParameter("login")%></H1>
<H1>Example: 2+3= <%=2+3%></H1>
<%--this is java comment (как в обычнои джаве) это нет--%>
<!--    это мы увидим на странице-->
<h2>session: <%=session.getAttribute("password")%></h2>
<h2>context: <%=application.getInitParameter("abc")%></h2>
<h2>password: <%=getLoginWithDotots(request.getParameter("password"))%></h2>
<h2>CurrentDate <%=LocalDate.now()%></h2>
<%
    if(request.getParameter("login").equals("Pollet")){

    for(int i=0;i<10;i++){
        out.println("<h5>"+ i + "/h5");
    }
    }else {
        out.println("<h3> you not Pollet</h3>");
    }
%>
</body>
</html>
