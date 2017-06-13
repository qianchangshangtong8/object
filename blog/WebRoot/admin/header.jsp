<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,java.util.*" errorPage=""%>


<%
  //String path = request.getContextPath();
  //String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
  
  //UserData userdata = (UserData)session.getAttribute("currentLoginUserData");
  //String username=new String((request.getParameter("username")).getBytes("ISO-8859-1"),"gb2312");
  
  
  String username = request.getParameter("username");
  String numberpage = request.getParameter("numberpage");
  if(numberpage==null||numberpage==""){
    numberpage="1";
  }
  //String username = (String)session.getAttribute("username");
  
  
  String adminpower = (String)session.getAttribute("adminpower");
  String adminname = (String)session.getAttribute("currentLoginAdminName");
  
  
%>
<html>
<head>

 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <title>登录成功</title>
 <link rel="stylesheet" type="text/css" href="../css/toolbar.css"> 
 	<link rel="stylesheet" type="text/css" href="../css/footer.css">
 <script src="../js/myscript.js"></script>
 <script src="../js/jquery.min.js"></script>
 <link rel="stylesheet" type="text/css" href="../css/buttons.css">
 <link rel="stylesheet" type="text/css" href="../css/reset-min.css">
 
 <style>
 
 #headImage{
 position:relative;
 
 }
 
 
 .blink{
	font-size:40;
	color:#A5B8B7;
	font-family:"STXingkai";
	text-align:center;
	position:absolute;
	left:33%;
	top:100px;
	
	}
	
 
 </style>
 
 
</head>

<body onload="showTimer()">
    
    <div id="headImage">
        <img src="../image/bg11.jpg" width="960px" height="130px" alt="博客后台管理平台">
        
    </div>
    
    

    <div id="Head">

      <div id="HeadTop" style="height:50px;">
         
        <div id="welcome">
       <ul>
         <li>
          <p>欢迎你 <%=username %> | 权限：<%=adminpower %>|<a href="logout.jsp" class="button blue">退出</a></p>
         </li>
       </ul>
     </div>  
     <div class="time"></div>   
     </div>
   </div>

   

   <div id="ChannelMenu">
     
       <%
        if("1".equals(numberpage)){
       %>
      
         <a href="../index.jsp" target="_blank" id="CurrentLink" class="button">首页</a> 
       
       <%} 
         else{
       %>
        
         <a href="../index.jsp" target="_blank" class="button" >首页</a> 
     
       <%} 
         if("2".equals(numberpage)){
       %>
      
         <a href="user.jsp?numberpage=2" target="_top"  id="CurrentLink" class="button">用户管理</a> 
      
       <%}
         else{
        %>
      
         <a href="user.jsp?numberpage=2" target="_top" class="button">用户管理</a> 
       
        <%}
         if("3".equals(numberpage)){ %>       
       
         <a href="adminforum.jsp?numberpage=3" target="_top" id="CurrentLink" class="button">博客管理</a> 
	   
	   <%}
	     else{ %>
	     
         <a href="adminforum.jsp?numberpage=3" target="_top" class="button">博客管理</a> 
	   
	     <%} 
	      
	      
	      
	    /*   if("4".equals(numberpage)){
	     % >
       <li>
         <a href="adminphoto.jsp?numberpage=4" target="_top" id="CurrentLink">相册管理</a> 
	   </li>
	   <%}
	    else{
	    % >
	    <li>
         <a href="adminphoto.jsp?numberpage=4" target="_top">相册管理</a> 
	   </li>
	    <%} */
	      
	      
	      
	      if("5".equals(numberpage)){
	     %>
       
         <a href="showmessage.jsp?numberpage=5" target="_top" id="CurrentLink" class="button">公告管理</a> 
	   
	   <%}
	     else{
	    %>
	   
         <a href="showmessage.jsp?numberpage=5" target="_top" class="button">公告管理</a> 
	   
	   <%}
	   if("6".equals(numberpage)){
	     %>
       
         <a href="liuyan.jsp?numberpage=6" target="_top" id="CurrentLink" class="button">留言管理</a> 
	 
	   <%}
	     else{
	    %>
	    
         <a href="liuyan.jsp?numberpage=6" target="_top" class="button">留言管理</a> 
	   
	   <%} %>
	   
         <a href="../pass.jsp?username=<%=adminname %>" target="_blank" class="button">我的博客</a> 
	    <a href="../index2.jsp" target="_blank" class="button">在线聊天</a>
    
  </div>
<!--    <script type="text/javascript" >
  function blink(selector){
    $(selector).fadeOut(15000, function(){
      $(this).fadeIn(15000, function(){
        blink(this);
      });
    });
  }
  $(document).ready(function(){
    blink('.blink');  
  });
  </script> -->
  </body>
</html>
