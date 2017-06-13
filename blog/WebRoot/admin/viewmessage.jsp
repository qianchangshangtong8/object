<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,java.util.*" errorPage=""%> 
<%@ page import="com.admin.MessageShow" %>
<%@ page import="com.admin.MessageDetail" %>
<%@ page import="com.admin.AdminPower" %>
<%
  String adminname = (String)session.getAttribute("currentLoginAdminName");
  //int intpage = 1;
  //int intpagecount = 1;
  String numberpage = request.getParameter("numberpage");
  if(numberpage == null||numberpage == ""){
    numberpage = "1";
  }
  
  
  String messageId = request.getParameter("id");
  if(messageId == null){
    messageId = "1";
  }
  int id = Integer.parseInt(messageId);
  MessageShow msgShow = new MessageShow();
  MessageDetail msgDetail = msgShow.getMessageDetailById(id);
  
  AdminPower adminP = new AdminPower();
  String adminpo = adminP.getAdminPower(adminname);
  
  if(adminname==null||adminpo.equals("普通会员")){
     response.sendRedirect("../index.jsp");
  }
  
  
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'viewmessage.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../css/toolbar.css">
<link rel="stylesheet" type="text/css" href="../css/buttons.css">
 <link rel="stylesheet" type="text/css" href="../css/reset-min.css">
    
    
    
    <style type="text/css">
#clear{
width:960px;
height:50px;
margin:0 auto;
}
#clear a{
float:right;
margin-right:5px;
padding-right:5px;
}
.gg{
align:center;
font-size:20;
}


    </style>
    
    
</head>
  
  <body>
    <jsp:include flush="true" page="header.jsp">
      <jsp:param name="username" value="<%=adminname %>" />
      <jsp:param name="numberpage" value="<%=numberpage %>" />
    </jsp:include>
    
    <!-- <table align="center" height="50px">
      <tr>
       <td><span class="STYLE2">发布信息的内容</span></td>
      </tr>
    </table> -->
   <br><br>
   <h1 class="gg" style="text-align:center;">公告详情</h1>
    <%
     if(adminname.equals(msgDetail.getAdmin_name())){
   %>
  <div id="clear">
    <a href="DeleteMessage?id=<%=msgDetail.getId() %>" class="button">删除公告</a>
    <a href="modifymessage.jsp?numberpage=5&id=<%=msgDetail.getId() %>" class="button">修改公告</a>  </div>
  <%
    }
   %>
   
   <div id="clsfloat"></div>
    
 <table align="center" width="960px" class="datagridstyle" id="DataGrid1" cellSpacing=0 cellPadding=3 border=0>
  <tr class="datagridhead">
   <td>主题:<%=msgDetail.getTitle() %></td>
   <td>发表者:<%=msgDetail.getAdmin_name() %></td>
   <td>发表时间:<%=msgDetail.getInsert_time() %></td>
 </tr> 
 <tr>
  <td colspan="3"><%=msgDetail.getContent() %></td>
 </tr>
 
 </table>
    
    
    <div id="lastfoot">
     <jsp:include flush="false" page="footer.jsp"></jsp:include>
    </div>
  </body>
</html>
