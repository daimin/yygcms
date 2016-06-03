<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{$sys.sitename} -- {$sys.seoname}</title>
<meta name="keywords" content="{$sys.keywords}" />
<meta name="description" content="{$sys.description}" />
<include file="Public:resources" />
</head>
<body> 
<div class="bodyall">
	<include file="Public:head360" />
	<div class="360-banner">
	<img border="0" src="__PUBLIC__/site/images/bannerlookus.jpg" alt="" width="100%" />
	</div>
	<div class="content360">
		<div class="pagenav">
		<span style="font-size:28px;font-weight:bolder;float:left;font-family:'Microsoft YaHei','SimHei';padding-left:6px;color:#555;">装修指南</span>
		<span style="float:right;height:38px;line-height:38px;min-height:38px;color:#6f6f70;"><span>首页</span><span> >> </span><span>看我们</span><span> >> </span><span>装修指南</span></span>
		</div>
		<div class="box-fuwu-onesite">
		    {$zhinan.content}
        </div>
	</div>
	
	<!--imenux end-->
<div class="cls"></div>
<script src="__PUBLIC__/site/js/jsddm.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
     
});
</script>
  <!--底部-->
<include file="Public:foot" />
<!--END-->
</body></html>