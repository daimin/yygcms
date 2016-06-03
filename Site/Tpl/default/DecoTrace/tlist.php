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
		<a href="__URL__/tlist/"><img src="__PUBLIC__/site/images/jiazhuangzhuizongicon.jpg" alt="家装追踪" width="113" height="34" style="float:left;" border="0" /></a>
		<span style="float:right;height:38px;line-height:38px;min-height:38px;color:#6f6f70;"><span>首页</span> <span>>></span> 
		                                                                        <span>看设计</span> <span>>></span> 
		                                                                        <span>家装追踪</span>
		                                                                        </span>
		</div>
		<div class="box-deco-trace">
		<div class="img-list">
			<?php foreach($datas as $ddate => $data){?>
			<div class="img-line">
			    <div class="img-date"><a href="__URL__/tdetail/date/<?php echo $ddate?>/"><?php echo $ddate?></a></div>
			    <?php 
			    for($i = 0; $i < 5; $i++){
			       $d = False;
			       if(isset($data[$i])){
			       	  $d = $data[$i];
			       }
			    ?>
				    <?php if(!empty($d)){?>
				    <a data-lightbox="roadtrip" href="__ROOT__<?php echo $d?>"><img border="none" src="__ROOT__<?php echo $d?>" /></a>
				    <?php }else{?>
				    <a href="javascript:void(0)"></a>
				    <?php }?>
			    <?php }?>
			</div>
			<?php }?>
			<div class="page"><?php echo $page?></div>
		</div>
		
        <div class="login-div">
        <form method="post" action="__URL__/dologout" id="oform">
        <input type="hidden" name="username" value="<?php echo $logUser['name']?>" />
	        <table>
	        <tr>
	        <td nowrap="nowrap" align="right">用户名：<?php echo $logUser['name']?></td>
	        </tr>
	        <tr>
	        <td style="text-align:left;" colspan="2">
	          <img src="__PUBLIC__/site/images/decotrace-logout.png" border="none" style="cursor:pointer" onclick="dologout()"/>
	        </td>
	        </tr>
	        </table>
        </form>
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

function dologout(){
	var oform = $("#oform").get(0);
	oform.submit();
}
</script>
  <!--底部-->
<include file="Public:foot" />
<!--END-->
</body></html>