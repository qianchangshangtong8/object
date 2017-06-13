<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,java.util.*" errorPage=""%> 
<%@ page import="com.admin.AdminPower" %>
<%
  //String currentLoginUserDataName = (String)session.getAttribute("currentLoginUserDataName");
  //String username=new String((request.getParameter("username")).getBytes("ISO-8859-1"),"gb2312");
  //String eusername = new String(username.getBytes("gb2312"),"ISO8859_1");
  String adminname = (String)session.getAttribute("currentLoginAdminName");
  //int intpage = 1;
  //int intpagecount = 1;
  String numberpage = request.getParameter("numberpage");
  if(numberpage == null||numberpage == ""){
    numberpage = "1";
  }
  
  AdminPower adminP = new AdminPower();
  String adminpo = adminP.getAdminPower(adminname);
  
  if(adminname==null||adminpo.equals("普通会员")){
     response.sendRedirect("../index.jsp");
  }
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP blog manage page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../css/toolbar.css">
	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<style>
	#wwww{
	width:1200px;
	height:30px;
	margin:0 auto;
	margin-top:100px;
	
	}
	
	#wwww .blink{
	font-size:35;
	color:#A5B8B7;
	font-family:"STXingkai";
	text-align:center;
	
	}
	
	
	</style>
	
  </head>
  
  <body>
    <jsp:include flush="true" page="header.jsp">
      <jsp:param name="username" value="<%=adminname %>" />
      <jsp:param name="numberpage" value="<%=numberpage %>" />
    </jsp:include>
    <div id="wwww">
    <p class="blink">欢迎进入博客后台管理系统</p>
    </div>
    <div id="lastfoot">
     <jsp:include flush="false" page="../footer.jsp"></jsp:include>
   </div>
   <script type="text/javascript" >
  function blink(selector){
    $(selector).fadeOut(1500, function(){
      $(this).fadeIn(1500, function(){
        blink(this);
      });
    });
  }
  $(document).ready(function(){
    blink('.blink');  
  }); 
  
</script>
  </body>
</html>
