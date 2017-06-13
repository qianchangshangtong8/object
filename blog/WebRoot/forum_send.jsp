<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*" errorPage=""%> 
<%@ page import="com.user.UserData" %>
<%@ page import="com.article.Article" %>
<%@ page import="com.article.ReArticle" %>
<%@ page import="com.article.ShowArticle" %>
<%@ page import="com.article.ArticleType" %>

<%
  String currentusername = null;
  if((String)session.getAttribute("currentLoginUserDataName")!=null){
    currentusername = (String)session.getAttribute("currentLoginUserDataName");
  }
  
  String username = request.getParameter("username");

  String numberpage = request.getParameter("numberpage");
  if(numberpage == null||numberpage == ""){
    numberpage = "1";
  } 
  
  List typeItems = null;
  ArticleType articlety = new ArticleType();
  typeItems = articlety.getType(username);
  Iterator arttypeItems = typeItems.iterator();
 %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title><%=username %> 的 blog</title>

	<meta http-equiv="pragma" content="text/html; charset=UTF-8">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/toolbar.css">
	
	<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="ueditor/ueditor.all.js"></script>
	
<style>

#DataGrid1{
margin-top:20px;

}



</style>
  </head>
  <script language="javascript"  src="javaScript/addnew.js">
   </script>
  <script language="javascript">
function isOK(f)
{
 // f.content.value = document.frames.cnEditBox.getHTML(true);
/*  f.content.value=window.frames['cnEditBox'].getHTML(true); */
/* var edit=document.getElementById("myEditor"); */
  if(f.title.value == "")
  {
     alert("主题不能为空!");
	 return false;
   }
   else if(f.title.value.length>30)
   {
      alert("主题不能太长!");
	  return false;
   }

   else if(f.type.value == ""){
     alert("类型不能为空!");
     return false;
   }
   else if(f.type.value.length>30){
     alert("类型不能超过30字符!");
     return false;
   }
      else if(f.content.value == "<p></p>")
   {
      alert("内容不能为空!");
	  return false;
   }
   else if(f.content.value.length>10000){
     alert("发布内容不能太长");
     return false;
   }
  else
  { 
     return true;
   }
} 

</script> 
  
  <body>
  <%
     if(currentusername == null&&(!currentusername.equals(username))){
   %>
  <script language="javascript">
     alert("你还没有登录!");
     history.back();
  </script>
  <%} %>
  
  
    <jsp:include flush="true" page="header.jsp">
      <jsp:param name="username" value="<%=currentusername %>" />
      <jsp:param name="numberpage" value="2" />
    </jsp:include>
    
    
    <form method="post" name="sendform" action="SendArticleDAO?currentusername=<%=currentusername %>" onSubmit="return isOK(this);">
     
<!--     此处注意啦
 -->     
<!--      <input type="hidden" name="content"/>
 -->     
 
 
 <table align="center" width="960px" id="DataGrid1" cellSpacing=0 cellPadding=3 border=0>
     <tr class="datagridhead">
      <td align="center" colspan="2">发表文章</td>
     </tr>
      <tr>
       <td align="left">主题:<input name="title" value="" type="text" height="20" size="50" maxlength="50"/></td>
     </tr>
     <tr>
       <td align="left">类型:
         <select name="type" id="typeselect">
           <%
            while(arttypeItems.hasNext()){  
             String typename = (String)arttypeItems.next();
            %>
            <option value="<%=typename %>"><%=typename %></option>
            <%} %>
            <%
             if(typeItems.size()<1){
             %>
             <option value="学校事迹">学校事迹</option>
             <option value="校园生活">校园生活</option>
             <option value="社团动态">社团动态</option>
             <%} %>
         </select>
         <a href="javascript:showinput()">添加类型</a>
         <input type="text" id="newtype" name="addtypevalue" value="请在这里输入新类型" onFocus="resetvalue();" onBlur="addType();" style="visibility:hidden"/>
      </td>
     </tr>
     <tr>
      <td align="left">
<!--         <iframe style="border: none" name="cnEditBox" src="editbox/edit/index.html" width="100%" height="400"> </iframe> 
 -->     
<!--  <textarea rows="15" cols="80" name="content"></textarea> -->
 
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
      <td>
        <input type="submit" class="button" value="提交">&nbsp;&nbsp;&nbsp;
	    <input type="button" class="button" value="返回" onClick="history.go(-1);"/>
      </td>
     </tr>
    </table> 
   </form>
   
   <div id="lastfoot">
     <jsp:include flush="false" page="footer.jsp"></jsp:include>
   </div>
    
  </body>
</html>
