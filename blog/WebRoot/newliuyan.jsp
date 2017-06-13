<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*" errorPage=""%> 
<%@ page import="com.liuyan.LiuYanData" %>
<%@ page import="com.liuyan.GetLiuYan" %>

<%
  String liuyanmsg = (String)session.getAttribute("liuyanmsg");
  if(liuyanmsg==null){
    liuyanmsg = "";
  }
  else{
    session.removeAttribute("liuyanmsg");
  }


  String strpage = request.getParameter("page");
  int intpage = 1;
  int intpagecount = 1;
  if(strpage == null||strpage == ""){
     strpage = "1";
  }
  intpage = java.lang.Integer.parseInt(strpage);
  
  
  GetLiuYan showMsg = new GetLiuYan();
  List messageItems = showMsg.getAllLiuYan(intpage);
  Iterator messItems = messageItems.iterator();
  
  intpagecount = showMsg.getPageSize();
 %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<title>Calendar</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/mm_health_nutr.css" type="text/css" />
<script src="js/myscript.js"></script>
<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="ueditor/ueditor.all.js"></script>

 <link rel="stylesheet" type="text/css" href="css/buttons.css">
 <link rel="stylesheet" type="text/css" href="css/reset-min.css">

<style>
body{
font:14 "微软雅黑";

}


#headImage{
height:150px;
width:1200px;
margin:0 auto;

}
#headImage img{
height:150px;
width:1200px;
}
.showtime{
height:50px;
width:1200px;
margin:0 auto;
overflow:hidden;
zoom:1;
}
.backindex{
float:left;
}
.time{
float:right;
line-height:50px;
}

</style>
</head>
<body onload="showTimer()">
    
    <div id="headImage">
      <img src="image/bg33.jpg">
  
    </div>
    <div class="showtime">
    <div class="backindex"><a href="index.jsp" class="button blue">返回首页</a></div>
	<div class="time"></div>    
     </div>
	



   <table border="0" align="center"  cellspacing="0" cellpadding="2" width="1200">
        <tr>
          <td class="pageName" align="center">欢迎你给本站留言</td>
        </tr>
        <tr>
          <td class="bodyText" align="right"><p>给本站提出你们最宝贵的意见。</p>		  </td>
        </tr>
		 <%
         for(int i=1;messItems.hasNext();i++){
           LiuYanData msgDetail = (LiuYanData)messItems.next();
        %>
        <tr>
          <td  class="subHeader" id="monthformat">&nbsp;<br />留言者:<%=msgDetail.getName() %>&nbsp;&nbsp;&nbsp;发表时间:<%=msgDetail.getInsert_time() %></td>
         </tr>
         <tr>
          <td class="bodyText" valign="top">
           <%=msgDetail.getContent() %>
          </td>
        </tr>
        
        <%} %>
		<tr>
		 <td>
		 第<%=intpage%>页&nbsp;&nbsp;共<%=intpagecount%>页&nbsp;&nbsp;
 <%if(intpage>1)
 {%>
     <a href="newliuyan.jsp?page=<%=intpage-1%>">上一页</a>
<%}%>&nbsp;&nbsp;
<%if(intpage<intpagecount)
  {%>
     <a href="newliuyan.jsp?page=<%=intpage+1%>">下一页</a>
 <%}%>
		 </td>
		 
		</tr>
        </table>
<hr align="center"  style="width:1200px;"/>
<script language="javascript">
function isOK(f)
{
  if(f.re_name.value=="")
  {
     alert("姓名不能为空!");
	 return false;
   }
   else if(f.re_name.value.length>18)
  {
     alert("姓名不能太长!");
	 return false;
   }
   else if(f.content.value.length=0)
  {
     alert("内容不能为空!");
	 return false;
   }
   else if(f.content.value.length>3000)
  {
     alert("内容不能多于 3000个字符!");
	 return false;
   }
   else{  return true;  }
}
</script>
<form method="post" action="LiuYanDAO" onSubmit="return isOK(this);">
      <table align="center" width="500px" class="datagridstyle" id="DataGrid1" cellSpacing=0 cellPadding=3 border=0>
       <tr class="datagridhead">
         <th align="center"><font color='black'>发表留言:</font></th>
        </tr>
        <tr>
         <td>姓名:<input type="text" name="re_name" value="匿名" size="25"/></td>
        </tr>
        <tr>
         <td>内容:（不要超过3000个字符或者1000个汉字）</td>
        </tr>
        <tr>
         <td>
         
        <!--  <textarea name="content" cols="80" rows="15"></textarea> -->
         
         <script type="text/plain" id="myEditor" name="content"></script>
	<script type="text/javascript">
    var editor = new UE.ui.Editor();
    editor.render("myEditor");
    //1.2.4以后可以使用一下代码实例化编辑器
    //UE.getEditor('myEditor')
</script>
         
         
         </td>
        </tr>
        <tr>
         <td><input class="button" type="submit" size="10" value="回  复"/></td>
 
        </tr>
      </table>
    </form>  
	</td>
</table>
 <div id="lastfoot">
     <jsp:include flush="false" page="footer.jsp"></jsp:include>
   </div>
</body>
</html>
