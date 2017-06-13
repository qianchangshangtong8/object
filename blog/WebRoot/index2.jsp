<%@page contentType="text/html" pageEncoding="UTF-8" %>
<html>
<head>
<title>
	博客聊天室
</title>
<link href="css/style.css" rel="stylesheet">
 <link rel="stylesheet" type="text/css" href="css/buttons.css">
 <link rel="stylesheet" type="text/css" href="css/reset-min.css">
 <link　rel="stylesheet" type="text/css" href="css/footer.css">
<style>
body{
background-color:#D8DCDB;
/* background-image:url(image/bg11.jpg);
 */}
h1{
font-size:30;
font-family:"STXingkai"
}

#lastfoot{
margin-top:180px;


}

</style>
</head>
<script language="javascript">
function check(){
	if(form1.username.value==""){
		alert("请输入用户名！");form1.username.focus();return false;	
	}else if(form1.username.value=="\'"){
		alert("请不要输入非法字符！");form1.username.focus();return false;
	}
}
</script>
<body >
<br>
<form name="form1" method="post" action="Messages?action=loginRoom" onSubmit="return check()" id="fff">
    <table width="500" height="330"  border="0" align="center" cellpadding="0" cellspacing="0" background="image/bg11.jpg">
      <tr>
        <td height="160" colspan="3" class="word_dark" align="center"><h1>欢迎使用博客聊天室</h1></td>
      </tr>
      
      <tr>
        <td width="53" align="center" valign="top" class="word_dark">&nbsp;</td>
        <td width="216" align="center" valign="top" class="word_dark">用户名：
<input type="text" name="username" class="login"></td>
        <td width="94" valign="top" class="word_dark"></td>
      </tr>
      
      <tr>
      <td width="53" align="center" valign="top" class="word_dark">&nbsp;</td>
      <td width="216" align="center" valign="top" class="word_dark">
      <input name="Submit" type="submit" class="btn_bg button" value="进 入">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input name="button" type="button" class="btn_bg button" value="退出" onClick="history.go(-1);">
      <td width="94" valign="top" class="word_dark"></td>
      </td>
      </tr>
</table>		
</form>
<div id="lastfoot" style="position:fixed;bottom:0;width:100%;margin:0 auto;height:200px;">
     <jsp:include flush="false" page="footer.jsp"></jsp:include>
    </div>
</body>
</html>
