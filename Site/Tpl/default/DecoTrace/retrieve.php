<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{$sys.sitename} -- {$sys.seoname}</title>
<meta name="keywords" content="{$sys.keywords}" />
<meta name="description" content="{$sys.description}" />
<include file="Public:resources" />
<link rel="stylesheet" href="__PUBLIC__/site/js/lightbox/css/lightbox.css" type="text/css" media="screen" />
</head>
<body> 
<div class="bodyall">
<!-- 除首页外，所有的业务页面都用head360了 -->
	<include file="Public:head360" />
	<div class="360-banner">
	<img border="0" src="__PUBLIC__/site/images/bannerlookus.jpg" alt="" width="100%" />
	</div>
	<div class="content360">
		<div class="pagenav">
		<a href="__URL__"><img src="__PUBLIC__/site/images/jiazhuangzhuizongicon.jpg" alt="家装追踪" width="113" height="34" style="float:left;" border="0" /></a>
		<span style="float:right;height:38px;line-height:38px;min-height:38px;color:#6f6f70;"><span>首页</span> <span>>></span> 
		                                                                        <span>看设计</span> <span>>></span> 
		                                                                        <span>密码找回</span>
		                                                                        </span>
		</div>
		<div class="box-deco-trace">
		<div>
			<div style="font-size:14px;">请发送邮件到管理员邮箱：<strong><a href="mailto:<?php echo $opt->mail?>"><?php echo $opt->mail?></a></strong></div>
			<br/>
                                邮件中请写明如下信息：
            <ol>
            <li style="list-style: decimal;">登录用户名</li>
            <li style="list-style: decimal;">公司或个人名称</li>
            <li style="list-style: decimal;">装修日期</li>
            </ol>
		</div>
		</div>
	</div>
	
	<!--imenux end-->
<div class="cls"></div>
<script src="__PUBLIC__/site/js/jsddm.js" type="text/javascript"></script>
<script type="text/javascript" src="__PUBLIC__/site/js/lightbox/js/lightbox-2.6.min.js"></script>
<script type="text/javascript">
function yuyue_auto_height(){
	var pheight =  $("#profiles").css("height")
	$("#yuyue").css("height", pheight);
	var aimg = $("#yuyue a")[0];
	
	$(aimg).css("margin-top", parseInt(pheight) * 0.3);
}
$(document).ready(function() {
	yuyue_auto_height();
});

function dologin(){
	var oform = $("#oform").get(0);
	var username = $.trim(oform.username.value);
	var password = $.trim(oform.password.value);
    var msg = "";
	if(username == ''){
        msg = "用户名不能为空 -- \n";
	}
	if(password == ''){
        msg += "密码不能为空 -- \n";
	}

	if(msg != ''){
        alert(msg);
	}else{
       oform.submit();
	}
}

function doretrieve(){
	window.location = "__URL__/retrieve";
}
</script>
  <!--底部-->
<include file="Public:foot" />
<!--END-->
</body></html>