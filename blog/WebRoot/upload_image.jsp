<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*" errorPage=""%>
<%@ page import="com.upload.ImagesType" %>


<%
  String msg = (String)session.getAttribute("uploadmessage");
  if(msg==null){
     msg="";
  }
  else{
    session.removeAttribute("uploadmessage"); 
  }
  
  String currentusername = "";
  if((String)session.getAttribute("currentLoginUserDataName")!=null){
    currentusername = (String)session.getAttribute("currentLoginUserDataName");
  }
  
  String username = request.getParameter("username");
  String numberpage = request.getParameter("numberpage");
  if(numberpage == null||numberpage == ""){
    numberpage = "1";
  }
  
  
  ImagesType imgType = new ImagesType();
  List imgItems = imgType.getImagesType(username);
  Iterator imagesTypeItems = imgItems.iterator();
  
 %>


<html>
<head>
 <title>images upload</title>
 <script language="javascript"  src="javaScript/addnew.js">
   </script>
   
    <link rel="stylesheet" type="text/css" href="css/buttons.css">
 <link rel="stylesheet" type="text/css" href="css/reset-min.css">
<SCRIPT language="JavaScript" type="text/javascript">
function upload(){
      var filename = document.mainform.file.value;
      var message = document.slaryform.message.value;
      var imagetype = document.slaryform.imagetype.value;
      filename = filename.toLowerCase();
      var accept = false;
	  accept |= (filename.indexOf('.jpg')>-1);
	  accept |= (filename.indexOf('.gif')>-1);
	  accept |= (filename.indexOf('.jpeg')>-1);
      if(!accept)
      {
          alert("请选择允许上传文件：.png,.gif,.jpg,.jpeg！");
          document.mainform.file.focus();
          return false;
      }
      else if(message.length>100){
        alert("说明内容不能太长!");
        return false;
      }
      else if(message.length==0){
          alert("说明内容不能为空!");
          return false;
        }
      else if(slaryform.imagetype.value==""){
       alert("类型不能为空!");
       return false;
      }
      else if(slaryform.imagetype.value.length>10){
       alert("类型不能超过10字符!");
       return false;
      }
      mainform.action="UploadImage?username=<%=username%>&message="+message+"&imagetype="+imagetype;
      mainform.submit();
      
      return true;
 }
 
</SCRIPT>
  <link rel="stylesheet" type="text/css" href="css/toolbar.css">
</head>

<body>
<%
  if(currentusername.equals("")){
 %>
<SCRIPT language="JavaScript" type="text/javascript">
  alert("你还没有登录!");
  history.back();
</SCRIPT>
<%} %>

    <jsp:include flush="true" page="header.jsp">
      <jsp:param name="username" value="<%=username %>" />
      <jsp:param name="numberpage" value="<%=numberpage %>" />
    </jsp:include>
  
 <table align="center">
  <tr height="60px">
   <td><b><%=msg %></b></td>
  </tr>
 </table>
  <h1 align="center" style="padding-bottom:20px;">图片上传</h1>
  <form name="slaryform" action="" method="get">
   <table align="center">
   <thead></thead>
   <tbody>
     <tr style="padding-bottom:20px;">
     <td>图片类型:</td>
     <td>
       <select name="imagetype" id="typeselect">
          <%
           while(imagesTypeItems.hasNext()){  
             String typename = (String)imagesTypeItems.next();
            %>
           <option value="<%=typename %>"><%=typename %></option>
           <%} %>
           <%
           if(imgItems.size()<1){ 
           %>
           <option value="校园生活">校园生活</option>
           <option value="班级活动">班级活动</option>
           <option value="旅游">旅游</option>
           <%} %>
       </select>
       <a href="javascript:showinput()">添加类型</a>
         <input type="text" id="newtype" name="addtypevalue" value="请在这里输入新类型" onfocus="resetvalue();" onblur="addType();" style="visibility:hidden"/>
     </td>
    </tr>
    
    
    <tr>
     <td>图片说明:</td>
     <td><textarea name="message" cols="40" rows="5" length="60"></textarea></td>
    </tr>
    </tbody>
   </table>
  </form>
  <br>
 <form action="UploadImage"  enctype="multipart/form-data" method="post" name="mainform" onsubmit="return upload();">
  <table align="center">
    <tr>
     <td>
       请选择要上传的图片:
     </td>
     <td>       
       <input name="file" size=40 type="file" value="浏览图片">      
     </td>
    </tr>
    <tr>
     <td><input type="submit" class="button" value="上传图片"></td>
     
     <td><input type="reset" class="button" value="重选图片"></td>
    
    </tr>
  </table>
 </form>
  
   <div id="lastfoot">
     <jsp:include flush="false" page="footer.jsp"></jsp:include>
   </div>
</body>
</html>
