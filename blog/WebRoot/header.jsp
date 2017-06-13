<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*" errorPage=""%>


<%
  //String path = request.getContextPath();
  //String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
  
  //UserData userdata = (UserData)session.getAttribute("currentLoginUserData");
  //String username=new String((request.getParameter("username")).getBytes("ISO-8859-1"),"gb2312");
  String currentusername = "";
  if((String)session.getAttribute("currentLoginUserDataName")!=null){
    currentusername = (String)session.getAttribute("currentLoginUserDataName");
  }
  
  String username = request.getParameter("username");
  String numberpage = request.getParameter("numberpage");
  if(numberpage==null||numberpage==""){
    numberpage="1";
  }
  //String username = (String)session.getAttribute("username");

%>
<html>
<head>

 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <title>登录成功</title> 
 <link rel="stylesheet" type="text/css" href="css/toolbar.css">
 <script src="js/myscript.js"></script>
 
 <link rel="stylesheet" type="text/css" href="css/buttons.css">
 <link rel="stylesheet" type="text/css" href="css/reset-min.css">
 <style>
 
 </style>
</head>

<body onload="showTimer()">
    
    <div id="headImage">
      <img src="image/bg33.jpg">
    </div>
    
    

    <div id="Head">

      <div id="HeadTop">
        
        <div id="welcome">
        <%
         if(currentusername.equals(username)){
         %>
       <ul>
         <li>
          <p>欢迎你 <%=username %> <a href="logout.jsp" class="button blue" >退出</a></p>
         </li>
       </ul>
       <%}else{ %>
       <ul>
         <li>
          <p>欢迎来到<%=username %>空间</p>
         </li>
       </ul>
       <%} %>
     </div> 
     <div class="time"></div>    
     </div>
   </div>
	
   

   <div id="ChannelMenu">
     
         <a href="index.jsp" target="_blank"  class="button">首页</a> 
      
       
       <% 
         if("2".equals(numberpage)){
       %>
      
         <a href="forumindex.jsp?username=<%=username %>&numberpage=2" target="_top"  id="CurrentLink" class="button">我的博客</a> 
      
       <%}
         else{
        %>
        
         <a href="forumindex.jsp?username=<%=username %>&numberpage=2" target="_top"  class="button">我的博客</a> 
      
        <%}
         if("3".equals(numberpage)){ %>       
       
         <a href="photo.jsp?username=<%=username %>&numberpage=3" target="_top" id="CurrentLink"  class="button">我的相册</a> 
	 
	   <%}
	     else{ %>
	   
         <a href="photo.jsp?username=<%=username %>&numberpage=3" target="_top"  class="button">我的相册</a> 
	   
	     <%} 
	      if("4".equals(numberpage)){
	     %>
   
         <a href="friends.jsp?username=<%=username %>&numberpage=4" target="_top" id="CurrentLink"  class="button">好友信息</a> 
	  
	   <%}
	    else{
	    %>
	    
         <a href="friends.jsp?username=<%=username %>&numberpage=4" target="_top"  class="button">好友信息</a> 
	
	    <%}
	      if("5".equals(numberpage)){
	     %>
      
         <a href="modify_userdata.jsp?username=<%=username %>&numberpage=5" target="_top" id="CurrentLink"  class="button">个人信息</a> 
	  
	   <%}
	     else{
	    %>
	    
         <a href="modify_userdata.jsp?username=<%=username %>&numberpage=5" target="_top"  class="button">个人信息</a> 
	   
	   <%} %>
	   			   	   
	   <a href="newliuyan.jsp" target="_blank" class="button">系统留言</a>
	   	
	   	    <a href="index2.jsp" target="_blank" class="button">在线聊天</a>
	   
    </ul>
  </div>
  
</body>
</html>
