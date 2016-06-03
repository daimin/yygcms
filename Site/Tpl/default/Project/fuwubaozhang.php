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
	<img border="0" src="__PUBLIC__/site/images/bannerproject.jpg" alt="" width="100%" />
	</div>
	<div class="content360">
		<div class="pagenav">
		<img src="__PUBLIC__/site/images/fuwubaozhangicon.jpg" alt="服务保障" width="116" height="34" style="float:left;" border="0" />
		<span style="float:right;height:38px;line-height:38px;min-height:38px;color:#6f6f70;"><span>首页</span><span> >> </span><span>看工程</span><span> >> </span><span>服务保障</span></span>
		</div>
		<div class="box-project-container">
		   <img src="__PUBLIC__/site/images/fuwubaozhang.jpg" border="none" />
        </div>
	</div>
	
	<!--imenux end-->
<div class="cls"></div>
<script src="__PUBLIC__/site/js/jsddm.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
     var imgs = $(".box-youshi div a img");
	 imgs.each(function(i, o){
		 
		 var pimg = $(o).siblings(".img-popup");
		
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
						if($.browser.msie){
					    	if(obj.offsetParent!=null)  offset +=getTop(obj.offsetParent);
					    }
					    
					    return offset;
					};
				 //alert(p.top + "," + p.left);
				 var offtop = getTop(os);
				 var offleft = getLeft(os);
				 if($.browser.msie){
					 //offleft -= 200; // 减去图片的宽度 -50
				 }
                 if(pimg.get(0)){
                
                    pimg.get(0).style.top=((offtop - 40) + "px");
				    pimg.get(0).style.left=((offleft - 50) + "px");
                 }
				 
				 //pimg.offset({ top: offtop - 40, left: offleft - 50 });
				 pimg.fadeIn(1000);
				 
				
			 }
		 });
		
		 pimg.mouseout(pimg, function(){
			 
        	 if(!pimg.css("display") || pimg.css("display") != "none"){
        		
        	     pimg.fadeOut();
        	     
        	 }
        	
		 });
		
		
         
		
	 });
});
</script>
  <!--底部-->
<include file="Public:foot" />
<!--END-->
</body></html>