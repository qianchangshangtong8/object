<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.io.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%
//注：Tomcat目录下必须有temp临时目录文件夹

//文件保存目录路径
String savePath = pageContext.getServletContext().getRealPath("/") + "attached/";
//文件保存目录URL
String saveUrl  = request.getContextPath() + "/attached/";

//定义允许上传的文件扩展名
HashMap<String, String> extMap = new HashMap<String, String>();
extMap.put("image", "gif,jpg,jpeg,png,bmp");
//extMap.put("flash", "swf,flv");
//extMap.put("media", "swf,flv,mp3,wav,wma,wmv,mid,avi,mpg,asf,rm,rmvb");
//extMap.put("file", "doc,docx,xls,xlsx,ppt,htm,html,txt,zip,rar,gz,bz2");

//最大文件大小
long maxSize = 1000000;
response.setContentType("text/html; charset=UTF-8");
if(!ServletFileUpload.isMultipartContent(request)){
	out.println("<script type='text/javascript'>alert('请选择文件。')</script>");
	out.println("<script type='text/javascript'>location.href='upload.jsp'</script>");
	return;
}
//检查目录
File uploadDir = new File(savePath);
if(!uploadDir.isDirectory()){
	out.println("<script type='text/javascript'>alert('上传目录不存在。')</script>");
	out.println("<script type='text/javascript'>location.href='upload.jsp'</script>");
	return;
}
//检查目录写权限
if(!uploadDir.canWrite()){
	out.println("<script type='text/javascript'>alert('上传目录没有写权限。')</script>");
	out.println("<script type='text/javascript'>location.href='upload.jsp'</script>");
	return;
}

String dirName = request.getParameter("dir");
if (dirName == null) {
	dirName = "image";
}
if(!extMap.containsKey(dirName)){
	out.println("<script type='text/javascript'>alert('目录名不正确。')</script>");
	out.println("<script type='text/javascript'>location.href='upload.jsp'</script>");
	return;
}
//创建文件夹
savePath += dirName + "/";
saveUrl += dirName + "/";
File saveDirFile = new File(savePath);
if (!saveDirFile.exists()) {
	saveDirFile.mkdirs();
}
SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
String ymd = sdf.format(new Date());
savePath += ymd + "/";
saveUrl += ymd + "/";
File dirFile = new File(savePath);
if (!dirFile.exists()) {
	dirFile.mkdirs();
}

FileItemFactory factory = new DiskFileItemFactory();
ServletFileUpload upload = new ServletFileUpload(factory);
upload.setHeaderEncoding("UTF-8");
List items = upload.parseRequest(request);
Iterator itr = items.iterator();
while (itr.hasNext()) {
	FileItem item = (FileItem) itr.next();
	String fileName = item.getName();
	long fileSize = item.getSize();
	if (!item.isFormField()) {
		//检查文件大小
		if(item.getSize() > maxSize){
			out.println("<script type='text/javascript'>alert('图片大小超出"+maxSize+"KB限制，请重新选择！')</script>");
			out.println("<script type='text/javascript'>location.href='upload.jsp'</script>");
			return;
		}
		//检查扩展名
		String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();
		if(!Arrays.<String>asList(extMap.get(dirName).split(",")).contains(fileExt)){
			out.println("<script type='text/javascript'>alert('上传文件扩展名是不允许的扩展名。\n只允许" + extMap.get(dirName) + "格式！')</script>");
			out.println("<script type='text/javascript'>location.href='upload.jsp'</script>");
			return;
		}

		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		String newFileName = df.format(new Date()) + "_" + new Random().nextInt(1000) + "." + fileExt;
		try{
			File uploadedFile = new File(savePath, newFileName);
			item.write(uploadedFile);
		}catch(Exception e){
			out.println("<script type='text/javascript'>alert('上传文件失败！')</script>");
			out.println("<script type='text/javascript'>location.href='upload.jsp'</script>");
			return;
		}
		String upurl = saveUrl+newFileName;
		out.println("<script type='text/javascript'>parent.reloadImg('"+upurl+"');</script>");
		out.println("<script type='text/javascript'>location.href='upload.jsp?url="+upurl+"'</script>");
	}
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<style type="text/css">
* {
	margin:0;
	padding:0
}
html, body {
	margin-top:-2px;
}
#filename {
	position:absolute;
	z-index:9999;
	left:150px;
	opacity:0;
	filter:alpha(opacity=0);
	width:50px;
	height:21px;
}
#url {
	position:absolute;
	left:0;
	width:146px;
	height:21px;
	background: #FFF;
	border:1px solid #d7d7d7;
	padding: 0;
	margin-top:-1px;
}
#flag {
	position:absolute;
	left:150px;
}
.btn2 {
	border:0;
	background: url("../../themes/default/images/button-bg.gif") no-repeat;
	font-size:12px;
	height:23px;
	width:50px;
	text-align: center;
	cursor: pointer;
}
.btn1 {
	border:0;
	background: url("../../themes/default/images/button-bg.gif") 0 -27px no-repeat;
	font-size:12px;
	height:23px;
	width:50px;
	text-align: center;
	cursor: pointer;
}
</style>
</head>
<body>
<form id="upImg" action="up.jsp" method="post" enctype="multipart/form-data" style="margin-top:5px;">
  <input id="filename" name="filename" type="file"  onmouseover="document.getElementById('flag').className='btn1'" onMouseOut="document.getElementById('flag').className='btn2'" />
</form>
</body>
</html>