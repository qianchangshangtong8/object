<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*" errorPage=""%> 
<%@ page import="com.admin.MessageShow" %>
<%@ page import="com.admin.MessageDetail" %>
<%@ page import="com.user.TopTen" %>
<%@ page import="com.user.UserData" %>

<%  
  
  String strpage = request.getParameter("page");
  int intpage = 1;
  int intpagecount = 1;
  if(strpage == null||strpage == ""){
     strpage = "1";
  }
  intpage = java.lang.Integer.parseInt(strpage);
  
  MessageShow showMsg = new MessageShow();
  
  List messageItems = showMsg.getMessage(intpage);
  Iterator messItems = messageItems.iterator();
  
  intpagecount = showMsg.getPageSize();
  
  TopTen topT = new TopTen();
  List topItems = topT.getTopTen();
  Iterator toptenItems = topItems.iterator();
 %>
 
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>公告栏</title>
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/index.css" rel="stylesheet" type="text/css" />
    <link href="css/index_div.css" rel="stylesheet" type="text/css" />
        <link href="css/toolbar.css" rel="stylesheet" type="text/css" />
    

    <style type="text/css">
    body{
    background-color:#D5DFE8;
    font:16px;
    }
#pagechange{
width:300px;
height:20px;
margin:0 auto;
font:20px;
padding-top:20px;

}
    </style>
</head>
  <body>
  
<div id="all">
 <div id="publication">
 <div id="messageshow">
 <h1 align="center" style="font-size:25;color:#ed3516;padding-top:15px;">本站公告栏</h1>
   <table width="100%" class="datagridstyle" id="DataGrid1" cellSpacing=0 cellPadding=3 border=0>
  <tr class="datagridhead12">
   <td>&nbsp;</td>
   <td>主题</td>
   <td>发布者</td>
   <td>发布时间</td>
 </tr> 
 <%
         int lili = 0;
         for(int i=1;messItems.hasNext();i++){
           MessageDetail msgDetail = (MessageDetail)messItems.next();
           if(i%2==0){
        %>
        <tr class="datagrid1212">
          <td>
            <a href="viewmsg.jsp?id=<%=msgDetail.getId() %>" target="_blank" title="查看公告"><%=i %></a>
          </td>
          <td>
            <a href="viewmsg.jsp?id=<%=msgDetail.getId() %>" target="_blank" title="查看公告"><%=msgDetail.getTitle() %></a>
          </td>
          <td>
            <a href="pass.jsp?username=<%=msgDetail.getAdmin_name() %>" target="_blank" title="到我的 blog 看看"><%=msgDetail.getAdmin_name() %></a>            
          </td>
          <td>
            <%=msgDetail.getInsert_time() %>
          </td>
        </tr>
        <%}else{ %>
        <tr>
          <td>
            <a href="viewmsg.jsp?id=<%=msgDetail.getId() %>" target="_blank" title="查看公告"><%=i %></a>
          </td>
          <td>
            <a href="viewmsg.jsp?id=<%=msgDetail.getId() %>" target="_blank" title="查看公告"><%=msgDetail.getTitle() %></a>
          </td>
          <td>
            <a href="pass.jsp?username=<%=msgDetail.getAdmin_name() %>" target="_blank" title="到我的 blog 看看"><%=msgDetail.getAdmin_name() %></a>
          </td>
          <td>
            <%=msgDetail.getInsert_time() %>
          </td>
        </tr>
        <%} 
        }%>
</table>
</div>
 <div id="pagechange">
第<%=intpage%>页&nbsp;&nbsp;共<%=intpagecount%>页&nbsp;&nbsp;
 <%if(intpage>1)
 {%>
     <a href="MyJsp.jsp?page=<%=intpage-1%>">上一页</a>
<%}%>&nbsp;&nbsp;
<%if(intpage<intpagecount)
  {%>
     <a href="MyJsp.jsp?page=<%=intpage+1%>">下一页</a>
 <%}%>   
  </div>
  </div>
  </div>
 
  </div>




    
  </body>
</html>
