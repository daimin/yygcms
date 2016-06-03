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
	<img border="0" src="__PUBLIC__/site/images/banner-sheji.jpg" alt="" width="100%" />
	</div>
	<div class="content360">
		<div class="pagenav">
		<a href="__URL__/tuandui/"><img src="__PUBLIC__/site/images/design-tuandui-icon.png" alt="设计团队" width="119" height="38" style="float:left;" border="0" /></a>
		<span style="float:right;height:38px;line-height:38px;min-height:38px;color:#6f6f70;"><span>首页</span> <span>>></span> 
		                                                                        <span>看设计</span> <span>>></span> 
		                                                                        <span>设计团队</span> <span>>></span> 
		                                                                        <span><?php echo $groups[$designer['group']]?></span>-<?php echo $designer['name']?>
		                                                                        </span>
		</div>
		<div class="box-design-tuandui" >
		<div class="profiles" id="profiles">
		<div class="photo"><img src="<?php echo $designer['photo']?>" width="170" height="203" /></div>
		<div class="profile" >
		   <div class="title">简介</div>
		   <div class="item">姓名：{$designer.name}</div>
		   <div class="item">职称：{$designer.rank}</div>
		   <div class="item">学历：{$designer.degree}</div>
		   <div class="item">毕业院校：{$designer.school}</div>
		   <div class="item">从业时间：{$designer.worktime}年</div>
		   <div class="item">设计格言：{$designer.motto}</div>
		   <div class="item">擅长风格：{$designer.expert}</div>
		</div>
		<div class="yuyue" id="yuyue" style="float:right;background:#D9B65C;width:70px;text-align:center;height:230px;height:100%;">
		    <a href="__URL__/yuding/" style="margin-top:65px;display: block;"><img src="__PUBLIC__/site/images/designer_yuyue.png" alt="" border="none"  /></a>
		</div>
		</div>
		<div class="box-body">
		<?php $attacs = $designer['attacs'];?>
		  <div class="box-pics">
		      <?php if(!empty($attacs)){?>
		      <?php
		      $len = count($attacs) > 3 ? 3 : count($attacs);
		      ?>
                <div class="box-pic">
                <?php for($i = 0; $i < $len; $i++){
                   $attac = $attacs[$i];
                ?>
                    <a data-lightbox="roadtrip" href="<?php echo $attac['path']?>"><img src="<?php echo $attac['path']?>" border="none"></a>
                <?php }?>
                </div>
              <?php
		         $len = count($attacs) > 3 ? $attacs : 0;
		         $len = $len > 6 ? 6 : $len;
		      ?>
                <div class="box-pic">
                <?php for($i = 3; $i < $len; $i++){
                   $attac = $attacs[$i];
                ?>
                    <a data-lightbox="roadtrip" href="<?php echo $attac['path']?>"><img src="<?php echo $attac['path']?>" border="none"></a>
                <?php }?>
                </div>
	          <?php }?>
                    </div>
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
</script>
  <!--底部-->
<include file="Public:foot" />
<!--END-->
</body></html>