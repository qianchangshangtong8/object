<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注销用户</title>
</head>

<body>
<%
  session.removeAttribute("currentLoginUserData");
  //session.removeAttribute("loginSign");
  //session.removeAttribute("userpower");
  response.sendRedirect("index.jsp");
%>  
</body>
</html>
