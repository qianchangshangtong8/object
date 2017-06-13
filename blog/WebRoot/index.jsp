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
 <!DOCTYPE html>
<html lang="zh">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/mystyle.css">
    <link rel="stylesheet" href="css/hottop.css">
    <script src="js/angular.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/myscript.js"></script>
   <!--  <script type="text/javascript" src="js/js.js"></script> -->
    <title>个人博客主页</title>
<!--     分享按钮
 -->    <script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"slide":{"type":"slide","bdImg":"4","bdPos":"right","bdTop":"100"},"image":{"viewList":["qzone","tsina","tqq","renren","weixin"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
    
    
    <style type="text/css">
    *{
    margin:0;
    padding:0;
    }
    body{
      padding-top: 70px;
      font-size:14px;
      padding-bottom:50px;
      background-color:#EEF3F9;
    }
    ul li{
    list-style:none;
    }
  .houdun{
	background: #E7E5E7 url(image/myblog1.jpg) no-repeat center;
	width: 100px;
	height: 100px;
	border: 5px solid white;
	border-radius: 50%;
	background-size: 100% 100%;
	border: 5px solid #00A0E1;
	cursor: pointer;
	transition:1s;
	position:absolute;
	top:0;
	left:150;
}
.houdun:hover{
	-ms-transform:rotate(720deg); /* //-ms代表ie内核识别码 */
	-moz-transform:rotate(720deg); /* //-moz代表火狐内核识别码 */
	-webkit-transform:rotate(720deg); /* -webkit代表谷歌内核识别码 */
	-o-transform:rotate(720deg); /* //-o代表欧朋【opera】内核识别码 */
	transform:rotate(720deg); /* //统一标识语句。。。最好这句话也写下去，符合w3c标准 */
	background: black url(image/xiaohui.jpg) no-repeat center;
	background-size: 100% 100%;
}
.topmenu
{
margin-left:100px;
}
#myframe1{
margin-top:40px;
}
#myCarousel{
margin-top:30px;

}
a:link {
    color: #04d;
    text-decoration: none
}

a:visited {
    color: #04d;
    text-decoration: none
}

a:hover {
    color: #f50;
    text-decoration: underline
}

a:active {
    color: #f50
}
div.time{
font-size:14px;
}
.tenblog{
position:relative;
}
.hothot {
    background: url("images/hot.gif") no-repeat scroll 0 0 transparent;
    position: absolute;
    top: 0;
    left: 100px;
    height: 20px;
    width: 20px;
}

    </style>
    
    <script language="JavaScript">
function isRight(f){
  if(f.user_name.value == "")
  {
     alert("注册名不能为空!");
	 return false;
   }
   else if(f.user_name.value.length>20)
   {
     alert("注册名必须小于20!");
	 return false;
   }
   else if((f.password.value.length<3)||(f.password.value.length>18))
   {
      alert("密码必须是大于3小于18的数字或字母!");
	  return false;
   }
  else if(f.password.value != f.repassword.value)
  {
      alert("两次输入的密码不同!");
	  return false;
  }	
   else if((f.qq.value.length>15)||(f.qq.value.length<3))
   {
      alert("QQ号码必须大于3小于15!");
	  return false;
   }
  else if((f.email.value == "")||(f.email.value.indexOf('@',0) == -1)||(f.email.value.indexOf('.',0) == -1))
  {
      alert("请输入合法的邮箱地址!");
	  return false;
  }
  else if(f.signname.value.length >150){
      alert("个性签名太长了!");
      return false;
  }
  else
  { 
     return true;
   }
  
}
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
</head>
<body data-ng-app="myApp" data-ng-controller="myCtrl" onload="showTimer()">
    <nav class="navbar navbar-inverse navbar-fixed-top navbar-top-style" id="navbox">
        <div class="header">
            <div class="container">
                <div class="time"></div>
            </div>
        </div>
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.jsp"><img src="image/myblog1.jpg" class="houdun"  /></a>
            </div>
            <div class="collapse navbar-collapse" id="mycollapse">
                <ul class="nav navbar-nav topmenu">
                    <li><a href="index.jsp">首页</a></li>
                    <li><a href="#reblog">热门博客</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  班级相册<span class="caret"></span>
              </a>
                        <ul class="dropdown-menu" id="menu-style" role="menu">
                            <li class="dropdown-header">
                                <p class="text-center"><strong>班级活动</strong></p>
                            </li>
                            <li><a href="index.html">&nbsp;&nbsp;军训</a></li>
                            <li><a href="index.html">&nbsp;&nbsp;漂流</a></li>
            
                            <li class="divider"></li>
                            <li class="dropdown-header">
                                <p class="text-center"><strong>日常活动</strong></p>
                            </li>
                            <li><a href="index.html">&nbsp;&nbsp;森林公园</a></li>
                            <li><a href="index.html">&nbsp;&nbsp;广州</a></li>
                            <li><a href="index.html">&nbsp;&nbsp;湛江游记</a></li>
                
                        </ul>
                    </li>
                    
                    <li><a href="newliuyan.jsp">留言板</a></li>
                    <li><a href="index2.jsp" target="_blank">在线聊天</a></li>
                    
                </ul>
                <ul class="nav navbar-nav navbar-right">
                           
                           <!-- 注册模块 -->
                           
                    <li>
                        <a class="" data-toggle="modal" data-target="#mymodal1"><span class="glyphicon glyphicon-user"></span>注册</a>
                        <div class="modal" id="mymodal1" data-backdrop="false" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-style">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h2 class="modal-title text-center">用户注册</h2>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form form-horizontal" action="Regedit" method="post" role="form" onSubmit="return isRight(this);">
                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-6">
                                                
                                                    <input class="form-control " type="text" name="user_name" value="" placeholder="用户名" data-ng-focus="toggle1()" data-ng-blur="toggle1()">
                                                </div>
                                                <div class="col-sm-3">
                                                    <span class="help-block help-style" data-ng-show="myVar1">请输入你的用户名</span>
                                                </div>
                                            </div>
                                            
                                            
                                            
                                            
                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-3">
                                                    <input class="form-control" type="password" name="password" value="" placeholder="密码" data-ng-focus="toggle2()" data-ng-blur="toggle2()">
                                                </div>
                                              
                                                <div class="col-sm-3">
                                                    <span class="help-block help-style" data-ng-show="myVar2">请输入你的密码</span>
                                                </div>
                                            </div>
                                            
                                            
                                            
                                            
                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-6">
                                                    <input class="form-control" type="password" name="repassword" value="" placeholder="确认密码" data-ng-focus="toggle3()" data-ng-blur="toggle3()">
                                                </div>
                                                <div class="col-sm-3">
                                                    <span class="help-block help-style" data-ng-show="myVar3">输入确认密码</span>
                                                </div>
                                            </div>
                                            
                                            
                                            <div class="form-group radio">
                                            
                                                <div class="col-sm-offset-3 col-sm-6"><span>性别</span>
                                                   <label> <input  type="radio" name="sex" value="男孩" ">男孩</label>
                                                  <label>   <input  type="radio" name="sex" value="女孩" ">女孩</label>
                                        
                                                </div>
                                             
                                            </div>
                                            
                                            <div class="form-group">
                                            <div class="col-sm-offset-3 col-sm-6">
                                            <span>头像</span>
                                            <select name="face" size=1 onChange="document.images['face'].src=options[selectedIndex].value;" style="BACKGROUND-COLOR: #99CCFF; BORDER-BOTTOM: 1px double; BORDER-LEFT: 1px double; BORDER-RIGHT: 1px double; BORDER-TOP: 1px double; COLOR: #000000">

<option value="images/face/Image1.gif">Image1</option>
<option value="images/face/Image2.gif">Image2</option>
<option value="images/face/Image3.gif">Image3</option>
<option value="images/face/Image4.gif">Image4</option>
<option value="images/face/Image5.gif">Image5</option>
<option value="images/face/Image6.gif">Image6</option>
<option value="images/face/Image7.gif">Image7</option>
<option value="images/face/Image8.gif">Image8</option>
<option value="images/face/Image9.gif">Image9</option>
<option value="images/face/Image10.gif">Image10</option>

</select><img id="face" src="images/face/Image1.gif">
                                            
                                            </div>
                                            </div>
                                       
                                       
                                       
                  <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-6">
                                                    <input class="form-control" type="text" name="qq" value="" placeholder="输入QQ号码" data-ng-focus="toggle4()" data-ng-blur="toggle4()">
                                                </div>
                                                <div class="col-sm-3">
                                                    <span class="help-block help-style" data-ng-show="myVar4">输入QQ号码</span>
                                                </div>
                                            </div>
                     
                     <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-6">
                                                    <input class="form-control " type="text" name="email" value="" placeholder="邮箱" data-ng-focus="toggle5()" data-ng-blur="toggle5()">
                                                </div>
                                                <div class="col-sm-3">
                                                    <span class="help-block  help-style" data-ng-show="myVar5">请输入你的邮箱</span>
                                                </div>
                                            </div>                   
                                            
                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-6">
                                                    <input class="form-control " type="text" name="www" value="" placeholder="个人主页" data-ng-focus="toggle6()" data-ng-blur="toggle6()">
                                                </div>
                                                <div class="col-sm-3">
                                                    <span class="help-block  help-style" data-ng-show="myVar6">个人主页</span>
                                                </div>
                                            </div>
                                                                       
                                              <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-6">
                                            <textarea class="form-control" rows="3" name="signname" placeholder="个性签名 " data-ng-focus="toggle7()" data-ng-blur="toggle7()"></textarea>
                                            </div>
                                                <div class="col-sm-3">
                                                    <span class="help-block  help-style" data-ng-show="myVar7">个性签名</span>
                                                </div>
                                            </div>
                                         
                                        <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-6">
                                                    <button type="submit" class='form-control btn btn-block btn-style'>注册</button>
                                                    <span class="help-block help-style">点击注册，表明你同意我们的<a href="#">服务条款</a></span>
                                                </div>
                                            </div>
                                         
                                         
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <div class="col-sm-offset-1 col-sm-3">
                                            <button type="button" class="btn btn-block btn-style" data-dismiss="modal">
                                                <span class="glyphicon glyphicon-chevron-left"></span>&nbsp;&nbsp;退出
                                            </button>
                                        </div>
                                        
                                       <!--  <div class="col-sm-offset-1 col-sm-3">
                                            <button type="button" class="btn btn-block btn-style" data-dismiss="modal" data-toggle="modal" data-target="#mymodal3">
                                                管理员登录&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-user"></span>
                                            </button>
                                        </div> -->
                                        
                                        
                                        <div class="col-sm-offset-4 col-sm-3">
                                            <button type="button" class="btn btn-block btn-style" data-dismiss="modal" data-toggle="modal" data-target="#mymodal2">
                                                登陆&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    
                    
<!--                     登录模块

 -->       
              <li>
                        <a class="" data-toggle="modal" data-target="#mymodal2" href="#">
                            <span class="glyphicon glyphicon-log-in"></span> 登录
                        </a>
                        <div class="modal" id="mymodal2" data-backdrop="false" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-style">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h2 class="modal-title text-center">用户登录</h2>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form form-horizontal" action="LoginConfirm" method="post" role="form" onSubmit="return isOK(this);">
                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-6">
                                                
                                                    <input class="form-control " type="text" name="login_name" value="" placeholder="用户名" data-ng-focus="toggle8()" data-ng-blur="toggle8()">
                                                </div>
                                                <div class="col-sm-3">
                                                    <span class="help-block  help-style" data-ng-show="myVar8">请输入你的用户名</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-6">
                                                    <input class="form-control" type="password" name="password" value="" placeholder="密码" data-ng-focus="toggle9()" data-ng-blur="toggle9()">
                                                </div>
                                                <div class="col-sm-3">
                                                    <span class="help-block help-style" data-ng-show="myVar9">请输入你的密码</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-6">
                                                    <button type="submit" class='form-control btn btn-block btn-style'>登录</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <div class="col-sm-offset-1 col-sm-4">
                                            <button type="button" class="btn btn-block btn-style" data-dismiss="modal">
                                                <span class="glyphicon glyphicon-chevron-left"></span>&nbsp;&nbsp;&nbsp;&nbsp;退出
                                            </button>
                                        </div>
                                        
                                        <!-- <div class="col-sm-offset-1 col-sm-3">
                                            <button type="button" class="btn btn-block btn-style" data-dismiss="modal" data-toggle="modal" data-target="#mymodal3">
                                                管理员登录&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-user"></span>
                                            </button>
                                        </div> -->
                                        
                                        
                                        <div class="col-sm-offset-3 col-sm-4">
                                            <button type="button" class="btn btn-block btn-style" data-dismiss="modal" data-toggle="modal" data-target="#mymodal1">
                                                注册&nbsp;&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    
                    <!-- 管理员登录模块 -->
                  <!--   
                    <li>
                        <a class="" data-toggle="modal" data-target="#mymodal3" href="#">
                            <span class="glyphicon glyphicon-log-in"></span>管理员登录
                        </a>
                        <div class="modal" id="mymodal3" data-backdrop="false" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-style">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h2 class="modal-title text-center">管理员登录</h2>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form form-horizontal" action="AdminLogin" method="post" role="form" onSubmit="return isOK(this);">
                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-6">
                                                    <input class="form-control " type="text" name="login_name" value="" placeholder="用户名" data-ng-focus="toggle10()" data-ng-blur="toggle10()">
                                                </div>
                                                <div class="col-sm-3">
                                                    <span class="help-block  help-style" data-ng-show="myVar10">请输入你的用户名</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-6">
                                                    <input class="form-control" type="password" name="password" value="" placeholder="密码" data-ng-focus="toggle11()" data-ng-blur="toggle11()">
                                                </div>
                                                <div class="col-sm-3">
                                                    <span class="help-block help-style" data-ng-show="myVar11">请输入你的密码</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-6">
                                                    <button type="submit" class='form-control btn btn-block btn-style'>登录</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <div class="col-sm-offset-1 col-sm-4">
                                            <button type="button" class="btn btn-block btn-style" data-dismiss="modal">
                                                <span class="glyphicon glyphicon-chevron-left"></span>&nbsp;&nbsp;&nbsp;&nbsp;退出
                                            </button>
                                        </div>
                                       
                                        <div class="col-sm-offset-3 col-sm-4">
                                            <button type="button" class="btn btn-block btn-style" data-dismiss="modal" data-toggle="modal" data-target="#mymodal1">
                                                注册&nbsp;&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li> -->
                    <li><a href="admin/login.jsp"><span class="glyphicon glyphicon-user"></span>管理员登录</a></li>
                    <li>
              <!-- 事件详情看mypopover.js -->
              <a class="navbar-link mypopover" data-toggle="popover" data-container="body" data-placement="bottom"
              data-content="<p class='text-center'>联系作者</p><p class='text-center'><img src='image/WeChat1.png' alt=''></p>">
              <span class="glyphicon glyphicon-phone-alt"></span>联系作者
              </a>
            </li>
                </ul>
            </div>
        </div>
    </nav>
<!--     导航结束
 -->	
 
<!--  轮播图开始
 --> 
 
 <div align="center" width="100%" height="300px" id="myCarousel">
  <iframe id="myframe1" src="Carousel-master/index.html" frameborder="0" width="100%" height="300px" scrolling="no"></iframe>
</div>
<!-- 轮播图结束
 -->
 
 
<!--  热门博客和博客公告区域
 -->   
 <div id="reblog">
<div id="reblogleft" >
<h3 align="center"><strong style="font-family:"微软雅黑"">热门博客</strong></h3>
      <div class="photos">
   
    <%
      int i = 0;
      while(toptenItems.hasNext()){
        i++;
        UserData toptenuser = (UserData)toptenItems.next();
        
     %>
       <div class="tenblog"><%=i %><s class="hothot"></s>
        <a href="pass.jsp?username=<%=toptenuser.getName() %>" title="到我的blog 看看" target="_blank">
          <img src="<%=toptenuser.getFace() %>" border="0px" width="40px" height="40px" alt="到我的blog看看"/>
        
          <strong><%=toptenuser.getName() %></strong>
        </a>
      </div>    
    <%
      if(i%5==0){
        out.print("<div id='clearf'></div>");
        if(i!=10){
          out.print("<hr/>");
        }
      }
     }
     %>
        
  </div>
  <div id="leftbottom">
  <h3 align="center">友情链接</h3>
  <ul>
  <li><a href="http://www.gdpa.edu.cn/" target="_blank">广东石油化工学院<img alt="广东石油化工学院" src="image/guanglogo.png" style="width:200px;height:50px;"/></a></li>
  <li><a href="http://lib.mmc.edu.cn/" target="_blank">广东石油化工学院图书馆</a><img alt="广东石油化工学院图书馆" src="image/tulogo.png" style="width:200px;height:50px;"/></li>
  <li><a href="http://www.cnki.net/" target="_blank">中国知网<img alt="中国知网" src="image/zhilogo.gif" style="width:200px;height:50px;"/></a></li>
  <li><a href="http://blog.sina.com.cn/" target="_blank">新浪博客<img alt="新浪博客" src="image/sinalogo.png" style="width:200px;height:50px;"/></a></li>
  <li><a href="http://blog.163.com/" target="_blank">网易博客<img alt="网易博客" src="image/wanglogl.png" style="width:200px;height:50px;"/></a></li>
    <li><a href="http://blog.csdn.net/" target="_blank">CSDN博客<img alt="网易博客" src="image/csdnlogo.jpg" style="width:200px;height:50px;"/></a></li>
  
  </ul>
  </div>
  
  
</div>
<div id="reblogright" >

  <iframe id="myframe2" src="MyJsp.jsp" frameborder="0" width="600px" height="400px" scrolling="no"></iframe>

</div>

</div>

<!-- 热门博客和博客公告结束
 -->   
   
<!--  底部开始 
 -->   
 <div id="bottom3">
        <ul>
        <li><a href="#">About us</a></li>
        <li><a href="#">网站介绍</a></li>
        <li><a href="mailto:zhuiyixingfu@gmail.com">联系我们</a></li>
      </ul>
        <p>Copyright © 2016 - 2017  All Rights Reserved </p>
        <p>广东石油化工学院计算机与电子信息学院</p>
    </div>
 
<!--  底部结束
 -->   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
<!--    返回顶部标识
 -->    
 <div class="fixedbox">
        <a href="#myCarousel">
            <span class="glyphicon glyphicon-arrow-up"></span>
        </a>
    </div>

</body>

</html>
