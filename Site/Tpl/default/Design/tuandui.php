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
<!-- 除首页外，所有的业务页面都用head360了 -->
	<include file="Public:head360" />
	<div class="360-banner">
	<img border="0" src="__PUBLIC__/site/images/banner-sheji.jpg" alt="" width="100%" />
	</div>
	<div class="content360">
		<div class="pagenav">
		<img src="__PUBLIC__/site/images/design-tuandui-icon.png" alt="设计团队" width="119" height="38" style="float:left;" border="0" />
		<span style="float:right;height:38px;line-height:38px;min-height:38px;color:#6f6f70;"><span>首页</span> <span>>></span> <span>看设计</span> <span>>></span> <span>设计团队</span> </span>
		</div>
		<div class="box-design-tuandui">
		<?php foreach($designers as $g=>$designer){?>
			<div class="group" style="">
				<div class="title"><?php echo $groups[$g]?></div>
				<div class="group-detail">
				<?php foreach($designer as $deser){?>
				<div class="block">
				   <div>
				      <a href="__URL__/tuandui_detail/uid/<?php echo $deser['id'] ?>/"><img src="<?php echo $deser['photo']?>" border="none" width="170" height="203" /></a>
				   </div>
				   <div class="infos">
				   		<div class="info"><?php echo $deser['name'] ?></div>
				        <div class="info"><?php echo $deser['rank'] ?>-<?php echo $deser['title'] ?></div>
				   </div>

				</div>
				<?php }?>
			    </div>
			</div>
		<?php }?>
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