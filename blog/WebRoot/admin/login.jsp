<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>管理员登录</title>
<link rel="stylesheet" type="text/css" href="../css/toolbar.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<script src="../js/myscript.js"></script>
<script src="../js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/buttons.css">
 <link rel="stylesheet" type="text/css" href="../css/reset-min.css">

	<style>
	p{
	line-height:36px;
	font:14px;;
	}
	#bottom3 {
    height: 60px;
    width: 100%;
    margin: 0 auto;
    border-top: 2px solid #3e3e3e;
    text-align: center;
    font-size: 15px;
    font-weight: 600;
    line-height: 20px;
    margin-top:10px;
}
#bottom3 ul{
	overflow:hidden;
	zoom:1;
	width:460px;
	height:20px;
	margin:0 auto;
	margin-bottom:2px;
}
#bottom3 ul li{
	float:left;
	padding-left:2px;
	width:150px;
	height:20px;
	list-style:none;
}
/* #bottom3 p{
	line-height:40px;
} */
a:link {
	COLOR: gray; 
	TEXT-DECORATION: none
}
a:visited {
	COLOR: #04d; 
	TEXT-DECORATION: none
}
a:hover {
	COLOR: #f50; 
	TEXT-DECORATION: underline
}
a:active {
	COLOR: #f50; 
	TEXT-DECORATION: underline
}
#toptop{
width:1200px;
height:50px;
margin:0 auto;
overflow:hidden;
zoom:1;
margin-bottom:10px;

}
#toptop .backindex{
height:50px;
width:150px;
float:left;
padding-left:10px;
line-height:30px;
}
#toptop .time{
height:50px;
width:230px;
float:right;
line-height:50px;
}


 
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

<script language="javascript">
function isOK(f)
{
  if(f.login_name.value=="")
  {
     alert("登录名不能为空!");
	 return false;
   }
   else if((f.password.value.length<3)||(f.password.value.length>18))
   {
      alert("密码必须是大于3小于18的数字或字母!");
	  return false;
   }
   else{  return true;  }
}
</script> 
		    
<body onload="showTimer()">
	<div id="headImage">
      <img src="../image/bg11.jpg">
       <p class="blink">欢迎登录博客后台管理系统</p>
    </div>
    
 
  	<div id="toptop">
  		<div class="backindex"><a href="../index.jsp" class="button blue">返回首页</a></div>
  		<div class="time"></div>
  	</div>
  













<!-- <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="#D5EDB3">
    <td width="382" colspan="2" rowspan="2"><img src="../image/mm_health_photo.jpg" alt="Header image" width="382" height="101" border="0" /></td>
    <td width="378" height="50" id="logo" valign="bottom" align="center" nowrap="nowrap">管理员登录</td>
    <td width="100%">&nbsp;</td>
  </tr>

  <tr bgcolor="#D5EDB3">
    <td height="51" id="tagline" valign="top" align="center"></td>
	<td width="100%">&nbsp;</td>
  </tr>

  <tr>
    <td colspan="4" bgcolor="#5C743D"><img src="../image/mm_spacer.gif" alt="" width="1" height="2" border="0" /></td>
  </tr>

  <tr>
    <td colspan="4" bgcolor="#99CC66" background="mm_dashed_line.gif"><img src="mm_dashed_line.gif" alt="line decor" width="4" height="3" border="0" /></td>
  </tr>

  <tr bgcolor="#99CC66">
  <td>&nbsp;</td>
  	<td colspan="3" id="dateformat" height="20"><a href="../index.jsp">主页</a>&nbsp;&nbsp;&nbsp;&nbsp;今天的日期:<script language="JavaScript" type="text/javascript">
      document.write(TODAY);	</script>	</td>
  </tr>

  <tr>
    <td colspan="4" bgcolor="#99CC66" background="mm_dashed_line.gif"><img src="mm_dashed_line.gif" alt="line decor" width="4" height="3" border="0" /></td>
  </tr>

  <tr>
    <td colspan="4" bgcolor="#5C743D"><img src="mm_spacer.gif" alt="" width="1" height="2" border="0" /></td>
  </tr>
 <tr>
    <td colspan="4" valign="top">&nbsp;<br />
    &nbsp;<br /> -->
	

<!-- 管理员登录 -->

<form method="post" action="AdminLogin" onSubmit="return isOK(this);">
<table align="center" width="360px" height="250px" id="DataGrid1" cellSpacing=0 cellPadding=3 border=0>
  <tr class="datagridhead">
    <td colspan="2" align="center">管理员登录 </td>
  </tr>
  <tr>
   <td align="center"><img src="../image/name.gif"/>&nbsp;用 户 名:</td>
   <td><input type="text" name="login_name" height="25" /></td>
  </tr>
  <tr class="datagrid1212">
   <td align="center"><img src="../image/mm.gif"/>&nbsp;密 码:</td>
   <td><input type="password" name="password" height="25" /></td>
  </tr>
  <tr>
   <td colspan="1" align="center"><input type="submit" value="登  录" class="button" /></td>
 	<td colspan="1" align="center"><input type="reset" value="重  置" class="button"/></td>
  </tr>
</table>
</form>
<div id="lastfoot">
     <jsp:include flush="false" page="../footer.jsp"></jsp:include>
   </div>
     <script type="text/javascript" >
  function blink(selector){
    $(selector).fadeOut(1500, function(){
      $(this).fadeIn(1500, function(){
        blink(this);
      });
    });
  }
  $(document).ready(function(){
    blink('.blink');  
  });
  </script>
</body>
</html>
