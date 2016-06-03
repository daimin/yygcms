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
		<a href="javascript:void(0)"><img src="__PUBLIC__/site/images/design-styles-icon.png" alt="设计风格" width="119" height="38" style="float:left;" border="0" /></a>
		<span style="float:right;height:38px;line-height:38px;min-height:38px;color:#6f6f70;"><span>首页</span> <span>>></span> 
		                                                                        <span>看设计</span> <span>>></span> 
		                                                                        <span>设计风格</span>
		                                                                        </span>
		</div>
		<div class="box-design-style"  id="box-design-style">
		<div class="selected-items">
			<div class="selected-item">
			选择地区:&nbsp;
			<?php foreach($regions as $region){
				 $sel_cls = "";
				 
			     if($sel_region == $region['region']){
			     	$sel_cls = ' class="selected" ';
			     }
			    
			?>
			<a <?php echo $sel_cls?> href="__ACTION__/<?php echo $urlParam?>/region/<?php echo $region['region']?>/#box-design-style"><?php echo $region['region']?></a>
			<?php }?>
			</div>
			<div class="selected-item">
			选择面积:&nbsp;
			<?php foreach($areas as $ak=>$area){
				$sel_cls = "";
					
				if($sel_area == $ak){
					$sel_cls = ' class="selected" ';
				}
			?>
			<a <?php echo $sel_cls?> href="__ACTION__/<?php echo $urlParam?>/area/<?php echo $ak?>/#box-design-style"><?php echo $area?></a>
			<?php }?>
			</div>
			<div class="selected-item">
			选择风格:&nbsp;
			<?php foreach($styles as $sk=>$style){
				$sel_cls = "";
					
				if($sel_style == $sk){
					$sel_cls = ' class="selected" ';
				}
			?>
			<a <?php echo $sel_cls?> href="__ACTION__/<?php echo $urlParam?>/style/<?php echo $sk?>/#box-design-style"><?php echo $style?></a>
			<?php }?>
			</div>
			<a href="__ACTION__" style="float:left;margin-top:10px;margin-left:4px;">
			   <img src="__PUBLIC__/site/images/design-styles-refresh.png" border="none" width="121" height="27"/>
			</a>
		</div>
		<div class="box-body">
	       <div class="box-pics">
	          <?php 
	          $count = count($desStyles);
	          for($i = 0; $i < $count; $i++){
	          	$ds = $desStyles[$i];
// 	          	print_r($ds['info']);
	          	if($i % 3 == 0){
	          		if($i > 0){
	          			echo '</div>';
	          		}
	          		?>
	          		<div class="box-pic">
	          		<div class="box-item">
		          		<a data-lightbox="roadtrip" href="<?php echo $ds['pic']?>"><img src="<?php echo $ds['pic']?>" border="none"></a>
		          		<div class="infos">
			          		<div style="float: left;width:275px;">
			          		 <span style="float: left;margin-left:12px;margin-top: 10px;"><?php echo $ds['info'][0]?>─<?php echo $ds['info'][1]?></span>
			          		 <span style="float: right;margin-right:12px;margin-top: 10px;"><?php echo $ds['info'][2]?></span> 
			          		</div>
			          		<div style="float: left;width:275px;">
			          		<span style="float: left;margin-left:12px;margin-top: 4px;"><?php echo $ds['info'][3]?>─<?php echo $ds['info'][4]?>m<sup>2</sup></span>
			          		</div>
		          		</div>
	          		</div>
	          		<?php 
	          	}else{
	          		?>
	          		<div class="box-item">
		          		<a data-lightbox="roadtrip" href="<?php echo $ds['pic']?>"><img src="<?php echo $ds['pic']?>" border="none"></a>
		          		<div class="infos">
			          		<div style="float: left;width:275px;">
			          		 <span style="float: left;margin-left:12px;margin-top: 10px;"><?php echo $ds['info'][0]?>─<?php echo $ds['info'][1]?></span>
			          		 <span style="float: right;margin-right:12px;margin-top: 10px;"><?php echo $ds['info'][2]?></span> 
			          		</div>
			          		<div style="float: left;width:275px;">
			          		<span style="float: left;margin-left:12px;margin-top: 4px;"><?php echo $ds['info'][3]?>─<?php echo $ds['info'][4]?>m<sup>2</sup></span>
			          		</div>
		          		</div>
	          		</div>
	          		
	           <?php 
	          		}
	          	
	          }?>
	          </div>
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