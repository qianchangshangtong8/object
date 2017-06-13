$(document).ready(function(){
  //返回顶部
  $(window).scroll( function() {
    if($(this).scrollTop()>200){
      setTimeout( function(){
        $('#navbox').addClass('navbar-top-style1');
        $('.fixedbox').show();
      },100);
    }else{
      setTimeout(function() {
        $('#navbox').removeClass('navbar-top-style1');
        $('.fixedbox').hide();
      },100);
    }
  });

  $(".mypopover").popover({ trigger: "manual" , html: true, animation: false })
      .on("mouseenter", function () {
        var _this = this;
        $(this).popover("show");
        $(".popover").on("mouseleave", function () {
          $(_this).popover('hide');
        });
      })
      .on("mouseleave", function () {
        var _this = this;
        setTimeout(function () {
            if (!$(".popover:hover").length) {
                $(_this).popover("hide");
            }
        }, 300);
  });

//轮播项目
  $('.carousel').carousel({
    interval: 6000,
    pause: 'none',
  });
 });


var app=angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
  $scope.myVar1 = false;
  $scope.toggle1 = function() {
    $scope.myVar1 = !$scope.myVar1;
  }
  $scope.myVar2 = false;
  $scope.toggle2 = function() {
    $scope.myVar2 = !$scope.myVar2;
  }
  $scope.myVar3 = false;
  $scope.toggle3 = function() {
    $scope.myVar3 = !$scope.myVar3;
  }
  $scope.myVar4 = false;
  $scope.toggle4 = function() {
    $scope.myVar4 = !$scope.myVar4;
  }
  $scope.myVar5 = false;
  $scope.toggle5 = function() {
    $scope.myVar5 = !$scope.myVar5;
  }
  $scope.myVar6 = false;
  $scope.toggle6 = function() {
    $scope.myVar6 = !$scope.myVar6;
  }
  $scope.myVar7 = false;
  $scope.toggle7 = function() {
    $scope.myVar7 = !$scope.myVar7;
  }
  $scope.myVar8 = false;
  $scope.toggle8 = function() {
    $scope.myVar8 = !$scope.myVar8;
  }
  $scope.myVar9 = false;
  $scope.toggle9 = function() {
    $scope.myVar9 = !$scope.myVar9;
  }
});

//时间显示
function showTimer(){
	var d=new Date();
	var year=d.getFullYear();
	var month=d.getMonth()+1;
	var day=d.getDate();
	var weekday=d.getDay();
	var week=new Array(7);
	week[0]="星期日";
		week[1]="星期一";
		week[2]="星期二";
    week[3]="星期三";
    week[4]="星期四";
    week[5]="星期五";
    week[6]="星期六";
	var h=d.getHours();
	var m=d.getMinutes();
	var s=d.getSeconds();
	m=checkTimer(m);
	s=checkTimer(s);
	document.getElementsByClassName('time')[0].innerHTML=year+"年"+month+"月"+day+"日"+week[weekday]+h+":"+m+":"+s;
	var t=setTimeout('showTimer()',500);
}
function checkTimer(i) {
	if (i<10) {
		i="0"+i;
	}
	return i;
}
//显示天气
function showWeather() {
  $.getJSON("http://v.juhe.cn/weather/index?callback=?",{
    "cityname" : $('.city option:selected').val(),
    "dtype" : "jsonp",
    "format": 2,
    "key" : "9b0990e9f318f2787d2e81e18ab15adf"
  },function (data) {
    var today=data.result.today;
    $('.weather').html("<p style='display:inline-block;text-indent:2em;'>"+'温度：&nbsp;&nbsp;'+today.temperature+
    "</p><p style='display:inline-block;text-indent:2em;'>"+'天气：&nbsp;&nbsp;'+today.weather+"</p>");
  });
}
