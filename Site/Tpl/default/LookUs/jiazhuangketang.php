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
	<img border="0" src="__PUBLIC__/site/images/bannerfuwu.jpg" alt="" width="100%" />
	</div>
	<div class="content360">
		<div class="pagenav">
		<img src="__PUBLIC__/site/images/jiazhuangketang-icon.jpg" alt="家装课堂" width="132" height="38" style="float:left;" border="0" />
		<span style="float:right;height:38px;line-height:38px;min-height:38px;color:#6f6f70;"><span>首页</span><span> >> </span><span>看我们</span><span> >> </span><span>家装课堂</span></span>
		</div>
		<div class="box-lookus-ketang">
		    <div class="box-lookus-ketang-container" id="box-lookus-ketang-container">
                    <div>
                    <a href="__URL__/jiazhuangketangtype/type/ketang_shui"><img src="__PUBLIC__/site/images/ketang/shui.png" border="none" style="width:235px;height:158px;" /></a>
                    </div>
                    <div>
                    <a href="__URL__/jiazhuangketangtype/type/ketang_dian"><img src="__PUBLIC__/site/images/ketang/dian.png" border="none" style="width:235px;height:158px;" /></a>
                    </div>
                    <div>
                    <a href="__URL__/jiazhuangketangtype/type/ketang_tuliao"><img src="__PUBLIC__/site/images/ketang/tuliao.png" border="none" style="width:235px;height:158px;" /></a>
                    </div>
                    <div>
                    <a href="__URL__/jiazhuangketangtype/type/ketang_diban"><img src="__PUBLIC__/site/images/ketang/diban.png" border="none" style="width:235px;height:158px;" /></a>
                    </div>
                    <div>
                    <a href="__URL__/jiazhuangketangtype/type/ketang_zhuan"><img src="__PUBLIC__/site/images/ketang/zhuan.png" border="none" style="width:235px;height:158px;" /></a>
                    </div>
                    <div>
                    <a href="__URL__/jiazhuangketangtype/type/ketang_men"><img src="__PUBLIC__/site/images/ketang/men.png" border="none" style="width:235px;height:158px;" /></a>
                    </div>
                    <div>
                    <a href="__URL__/jiazhuangketangtype/type/ketang_chuju"><img src="__PUBLIC__/site/images/ketang/chuju.png" border="none" style="width:235px;height:158px;" /></a>
                    </div>
                    <div>
                    <a href="__URL__/jiazhuangketangtype/type/ketang_jieju"><img src="__PUBLIC__/site/images/ketang/jieju.png" border="none" style="width:235px;height:158px;" /></a>
                    </div>
                <div style="magin-left:19px;margin-top:12px;"><a href="__URL__/jiazhuangketangtype/type/ketang_rizhi"><img src="__PUBLIC__/site/images/ketang/zhuangxiurizhi.png" border="none" style="width:976px;height:83px;" /></a></div>
            </div>
       </div>
	</div>
	
	<!--imenux end-->
<div class="cls"></div>
<script src="__PUBLIC__/site/js/jsddm.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	var imgdivs = $("#box-lookus-ketang-container div");
	imgdivs.each(function(i, o){
		var imgds = $(o).find("a img");
		if(imgds.length > 0){
			$(imgds[0]).hover(
			function(){
				var imgsrc = $(this).attr('src');
				if($(this).width() > 300) return;
				imgsrc = imgsrc.substring(0, imgsrc.lastIndexOf('.')) + "-over.png";
				$(this).attr('src', imgsrc);
			},
			function(){
				var imgsrc = $(this).attr('src');
				if($(this).width() > 300) return;
				imgsrc = imgsrc.substring(0, imgsrc.lastIndexOf('-')) + ".png";
				$(this).attr('src', imgsrc);
			});
			
		}
	});
});
</script>
<!--底部-->
<include file="Public:foot" />
<!--END-->
</body>
</html>