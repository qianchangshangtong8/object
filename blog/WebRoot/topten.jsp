<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*" errorPage=""%> 
<%@ page import="com.user.TopTen" %>
<%@ page import="com.user.UserData" %>
<%    
  TopTen topT = new TopTen();
  List topItems = topT.getTopTen();
  Iterator toptenItems = topItems.iterator();
 %>


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

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<title>热门博客</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/toolbar.css">
 <script src="js/myscript.js"></script>
<style>

#reblog{
        width: 1200px;
        height: 360px;
        margin: 0 auto;
/*         border: 1px solid red;
 */        margin-top:20px;
        overflow: hidden;
        zoom: 1;
    }

.photos{
    width: 690px;
    height: 120px;
    margin:0 auto;

}
.tenblog{
    width: 135px;
    height: 60px;
    float: left;
    padding-left:5px;

}


</style>


</head>
<body bgcolor="" onload="showTimer()">
 
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
          <p>欢迎你 <%=username %> <a href="logout.jsp">退出</a></p>
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
     <ul>
	   <li>
         <a href="index.jsp" target="_blank">首页</a> 
       </li>
       
       <% 
         if("2".equals(numberpage)){
       %>
       <li>
         <a href="forumindex.jsp?username=<%=username %>&numberpage=2" target="_top"  id="CurrentLink">博客</a> 
       </li> 
       <%}
         else{
        %>
        <li>
         <a href="forumindex.jsp?username=<%=username %>&numberpage=2" target="_top">博客</a> 
       </li> 
        <%}
         if("3".equals(numberpage)){ %>       
       <li>
         <a href="photo.jsp?username=<%=username %>&numberpage=3" target="_top" id="CurrentLink">相册</a> 
	   </li>
	   <%}
	     else{ %>
	     <li>
         <a href="photo.jsp?username=<%=username %>&numberpage=3" target="_top">相册</a> 
	   </li>
	     <%} 
	      if("4".equals(numberpage)){
	     %>
       <li>
         <a href="friends.jsp?username=<%=username %>&numberpage=4" target="_top" id="CurrentLink">好友</a> 
	   </li>
	   <%}
	    else{
	    %>
	    <li>
         <a href="friends.jsp?username=<%=username %>&numberpage=4" target="_top">好友</a> 
	   </li>
	    <%}
	      if("5".equals(numberpage)){
	     %>
       <li>
         <a href="modify_userdata.jsp?username=<%=username %>&numberpage=5" target="_top" id="CurrentLink">个人信息</a> 
	   </li>
	   <%}
	     else{
	    %>
	    <li>
         <a href="modify_userdata.jsp?username=<%=username %>&numberpage=5" target="_top">个人信息</a> 
	   </li>
	   <%} %>
    </ul>
  </div>
  

<div id="reblog">
<h3 align="center">热门博客</h3>
      <div class="photos">
   
    <%
      int i = 0;
      while(toptenItems.hasNext()){
        i++;
        UserData toptenuser = (UserData)toptenItems.next();
        
     %>
       <div class="tenblog"><%=i %>
        <a href="pass.jsp?username=<%=toptenuser.getName() %>" title="到我的blog 看看" target="_blank">
          <img src="<%=toptenuser.getFace() %>" border="0px" width="40px" height="40px" alt="到我的blog看看"/>
        
          <strong><%=toptenuser.getName() %></strong>
        </a>
      </div>    
    <%
      if(i%5==0){
/*         out.print("<div id='clearf'></div>");
 */        if(i!=10){
/*           out.print("<hr/>");
 */        }
      }
     }
     %>
        
  </div>
 
  
  
</div>
   
    
  
  
  <div id="clearf">
  </div>
  <div id="lastfoot">
     <jsp:include flush="false" page="footer.jsp"></jsp:include>
   </div>
</body>
</html>
