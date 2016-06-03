<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>{$sys.sitename} -- {$sys.seoname}</title>
<meta name="keywords" content="{$sys.keywords}">
<meta name="description" content="{$sys.description}">
<include file="Public:resources" />
<script src="__PUBLIC__/site/js/jquery.flexslider-min.js"></script>
<link href="__PUBLIC__/site/css/flexslider.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">

function popup_imgs(){
	 // 图片浮动

    var hideOthers = function (to){
        
    	var imgs = $("#four .fourlist .fourbox  img");
    	imgs.each(function(i, o){
    	   var pimgDiv = $(o).siblings(".img-popup-div");
 	       var pimg = null;
 	       if(pimgDiv.length > 0){
 	           pimg = pimgDiv.find(".img-popup");
 	       }
 	       if(pimg == null) return;
 	       if(pimg.attr('src') == to.attr('src')) return;
  	       var pcap = pimg.siblings('.popup-caption');
    	   
  	       pimg.hide();
		   pcap.hide();
    	});
    };
	 
	 var imgs = $("#four .fourlist .fourbox  img");
	
	 imgs.each(function(i, o){
		 
	   var pimgDiv = $(o).siblings(".img-popup-div");
       var pimg = null;
       if(pimgDiv.length > 0){
           pimg = pimgDiv.find(".img-popup");
       }
       if(pimg == null) return;
       
		 $(o).mouseover(pimg, function(){
			 
			 if(!pimg.css("display") || pimg.css("display") == "none"){
				 var os = $(this).get(0);
				
				 var getLeft=function(obj){
					    var offset=obj.offsetLeft;
					    if($.browser.msie){
					    	if(obj.offsetParent!=null)  offset +=getLeft(obj.offsetParent);
					    	
					    }
					    
					    return offset;
					};
				var getTop=function(obj){
					    var offset=obj.offsetTop;
					    return offset;
			     };

				 var offtop = getTop(os);
				 //var offleft = getLeft(os);
				 //if($.browser.msie){
				 //	 offleft -= 200; // 减去图片的宽度 -50
				 //}
                 
                 var pimgO = pimg.get(0);
                 
                 var offleft = 0;
				 
                 var idstr = pimg.attr("id");
                 var idstrs = idstr.split("-");
                 var idx = parseInt(idstrs[2]);
                 offleft = (idx - 1) * 250; 
                 
//                 console.log(offleft);
                 var imgOffTop = ((offtop - 40));
                 var imgOffLeft = ((offleft - 50) );
				 
				 if(pimgO){
					 pimgO.style.top = imgOffTop + "px";
					 pimgO.style.left= imgOffLeft + "px";
				 }

				 var pcap = pimg.siblings('.popup-caption');
				 var pcapO = pcap.get(0);
				 if(pcapO){
					 pcapO.style.top = (imgOffTop + 80) + "px";
					 pcapO.style.left= (imgOffLeft) + "px";
					 pcapO.style.width = "345px";
				 }
				 
				 //pimg.offset({ top: offtop - 40, left: offleft - 50 });
				 pimg.fadeIn(500);
				 pcap.fadeIn(500);
				 hideOthers(pimg);
				
			 }
		 });
		
		 pimg.mouseout(pimg, function(){ 
			 var pcap = pimg.siblings('.popup-caption');
			 var pcap_display = function(){
				 if(!pimg.css("display") || pimg.css("display") != "none"){
		      	     pimg.fadeOut();
		        	 pcap.fadeOut();
		      	 }
			 };
			 if(!$.browser.msie){
				 pcap_display();
			 }else{
				 pcap.mouseover(function(o){
					 window._pcap_over = true;
			     });
				 pcap.mouseout(function(o){
                     window._pcap_over = false;
			     });
			     window.setTimeout(function(){
				     if(!window._pcap_over){
				    	 pcap_display();
				    	 window._pcap_over = false;
					 }
				 }, 100);
		
			 }      	
		 });
		
	 });
}

$(document).ready(function() { 
	$('.flexslider').flexslider({pauseOnHover: true,slideshowSpeed: 6000});

	popup_imgs();
	
	var myar = setInterval('AutoScroll(".newsd")', 4000);
	$(".newsd").hover(
		function(){
		    clearInterval(myar);
	    },
		function(){
			myar = setInterval('AutoScroll(".newsd")', 4000);
		}
	);

});

function AutoScroll(obj){
	//console.log(obj);
	$(obj).find("ul:first").animate({
		marginTop:"-26px"
	}, 500, function(){
		$(this).css({marginTop:"0px"})
		.find("li:first").appendTo(this);
	});
}


</script>

</head>

<body> 
   <div class="site-top">
      <span class="site-top-span"><span class="site active">美平方总站</span><span class="sep-bar">&nbsp;</span><span class="site">贵阳站</span><span class="sep-bar">&nbsp;</span><span class="site">兴义站</span></span>
   </div>
<div class="bodyall">
<include file="Public:head_index" />
	<!--imenux end-->
<div class="cls"></div>
<!--页面头部　结束-->    
	<div id="ibanner" style="position: relative;">
		<div class="flexslider" style="width:100%;height:420px;margin:0px auto;">
            <ul class="slides">
            <volist name="indexs" id="index" offset="0" length="6">
			    <li><a href="<?php echo $index['relurl']?>" target="blank">
			       <?php if(!empty($index['attacs'])){
			           $attac = $index['attacs'][0];
			       	?>
			       <img src="{$attac.path}" border="0" width="100%" height="420px" />
			       <?php }?>
			    </a></li>
			</volist>
            </ul>
		</div>
		<div class="newslist" style="z-index:999;">
			<div class="newsa">
				<div class="newsb">新闻动态：</div>
				<div class="newsd">
					<ul style="margin-top: 0px;">
                    <volist name="dnews" id="dnew" offset="0" length="6">
					<li><a href="<?php echo $dnew['relurl']?>" target="blank"><?php echo $dnew['title']?></a></li>
					</volist>
					</ul>
				</div>
				<div class="newsb">案例动态：</div>
				<div class="newsd">
					<ul style="margin-top: 0px;">
                    <volist name="dcasts" id="dcast" offset="0" length="6">
					<li><a href="<?php echo $dcast['relurl']?>" target="blank"><?php echo $dcast['title']?></a></li>
					</volist>
			</ul>
				</div>
				<div class="cls"></div>
			</div>
		</div>
	</div>
	<!--banner end-->

	<div id="four">
		<div class="fourlist">
			<div class="fourbox">
				<img src="__PUBLIC__/site/images/lookproduct.png" border="0" />
				<div class="img-memo" >
				  <a href="__APP__/P360/taocan/">
				     <span style="color:#C30606;font-size:32px;font-family:'Arial Black';font-weight:bolder;">688</span>&nbsp;<span style="color:#707070;">套餐</span>
				  </a>
				</div>
				<div class="img-popup-div">
				<img class="img-popup" src="__PUBLIC__/site/images/lookproduct_popup.png" border="0" id="img-popup-1" />
                    <div class="popup-caption">
				        <a href="__APP__/P360/taocan/">688套餐</a>  | 
				        <a href="__APP__/P360/youshi/">688优势</a>  | 
				        <a href="__APP__/P360/cailiao/">688材料</a>
				    </div>
				</div>
			</div>
			<div class="fourbox">
				<img src="__PUBLIC__/site/images/lookdesign.png" border="0" />
				<div class="img-memo2" >
					  <div>
					     <span><a href="__APP__/Design/tuandui/">设计团队</a></span>
					     <span><a href="__APP__/Design/styles/">设计风格</a></span>
					 </div>
					  <div>
					     <span><a href="__APP__/Design/fuwu/">设计服务</a></span>
					 </div>
				</div>
				<div class="img-popup-div">
				    <img class="img-popup"  src="__PUBLIC__/site/images/lookdesign_popup.png" border="0"  id="img-popup-2"/>
				    <div class="popup-caption">
				        <a href="__APP__/Design/tuandui/">设计团队</a>  | 
				        <a href="__APP__/Design/styles/">设计风格</a>  | 
				        <a href="__APP__/Design/fuwu/">设计服务</a>
				    </div>
				</div>
			</div>
			<div class="fourbox">
				<img  src="__PUBLIC__/site/images/lookproject.png" border="0" />
				<div class="img-memo2" >
				  <div><span><a href="__APP__/Project/gongchengbaozhang/">工程保障</a></span><span><a href="__APP__/Project/huanbaobaozhang/">环保保障</a></span></div>
				  <div><span><a href="__APP__/Project/cailiaobaozhang/">材料保障</a></span><span><a href="__APP__/Project/fuwubaozhang/">服务保障</a></span></div>
				</div>
				<div class="img-popup-div">
				<img class="img-popup"  src="__PUBLIC__/site/images/lookproject_popup.png" border="0" id="img-popup-3"/>
					<div class="popup-caption">
				        <a href="__APP__/Project/gongchengbaozhang/">工程保障</a>  | 
				        <a href="__APP__/Project/huanbaobaozhang/">环保保障</a>  | 
				        <a href="__APP__/Project/cailiaobaozhang/">材料保障</a>  |
				        <a href="__APP__/Project/fuwubaozhang/">服务保障</a>
				    </div>
				</div>
			</div>
            <div class="fourbox">
	            <img  src="__PUBLIC__/site/images/lookserver.png" border="0" />
	            <div class="img-memo2" >
				  <div><span><a href="__APP__/Fuwu/onesite/">家装一站</a></span><span><a href="javascript:void(0)">完整服务</a></span></div>
				  <div><span><a href="__APP__/Fuwu/sigemianfei/" style="color:#4c80cb;">四个免费</a></span></div>
				</div>
				<div class="img-popup-div">
	               <img class="img-popup"  src="__PUBLIC__/site/images/lookserver_popup.png" border="0" id="img-popup-4"/>
	               	<div class="popup-caption">
				        <a href="__APP__/Fuwu/onesite/">家装一站</a>  | 
				        <a href="javascript:void(0)">完整服务</a>  | 
				        <a href="__APP__/Fuwu/sigemianfei/">四个免费</a>
				    </div>
	            </div>
            </div>
            <div class="cls"></div>
            
		</div>
            <div id="sqico">
<img alt="www.dyrs.com.cn" src="__PUBLIC__/site/images/erweima.jpg" border="0" />
</div>
	</div><!--four end-->
	
	
	<div id="bottomlink">
  <div id="bottomlinkboxs">
		<ul class="btlinkbox">
			<li class="btlinkbox1">公司简介</li>
			<li><a id="ccase" href="javascript:void(0)" target="_blank">&bull;&nbsp;家装案例推荐</a></li>
			<li><a href="__APP__/LookUs/rongyu/" target="_blank">&bull;&nbsp;荣誉资质</a></li>
			<li><a href="__APP__/LookUs/news/" target="_blank">&bull;&nbsp;美平方新闻</a></li>
			<li><a href="__APP__/Design/tuandui/" target="_blank">&bull;&nbsp;设计团队</a></li>
		</ul>
		<ul class="btlinkbox">
			<li class="btlinkbox1">家装套餐</li>
			<li><a href="__APP__/P360/taocan/" target="_blank">&bull;&nbsp;688套餐</a></li>
		</ul>
		<ul class="btlinkbox">
			<li class="btlinkbox1">贴心服务</li>
			<li><a href="__APP__/LookUs/jiazhuangketang/" target="_blank">&bull;&nbsp;家装课堂</a></li>
		</ul>
		<ul class="btlinkbox">
			<li class="btlinkbox1">装饰服务</li>
			<li><a href="javascript:void(0)" target="_blank">&bull;&nbsp;常见问题</a></li>
			<li><a href="javascript:void(0)" target="_blank">&bull;&nbsp;客户心声</a></li>
			<li><a href="__APP__/cuxiao/" id="optsbox">&bull;&nbsp;促销活动</a></li>
<li><a href="__APP__/Index/jiazhuangliucheng/" target="_blank">&bull;&nbsp;家装流程</a></li>
		</ul>
        <ul class="btlinkbox">
			<li class="btlinkbox1">特殊服务</li>
			<li><a href="__APP__/Fuwu/onesite/" target="_blank">&bull;&nbsp;家装一站</a></li>
			<li><a href="__APP__/DecoTrace/" target="_blank">&bull;&nbsp;家装跟踪</a></li>
			<li><a href="__APP__/Fuwu/sigemianfei/" id="optsbox">&bull;&nbsp;4个免费</a></li>
		</ul>
        
        <ul class="btlinkbox">
			<li class="btlinkbox1">装饰服务</li>
			<li><a href="javascript:void(0)" target="_blank">&bull;&nbsp;保障体系</a></li>
			<li><a href="__APP__/LookUs/msgboard/" target="_blank">&bull;&nbsp;在线留言</a></li>
		</ul>
        </div>
	</div><!--bottomlink end-->

  <!--底部-->
<include file="Public:foot_index" />
<!--END-->
</body></html>