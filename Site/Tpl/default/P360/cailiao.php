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
	<include file="Public:head360" />
	<div class="360-banner">
	<img border="0" src="__PUBLIC__/site/images/banner360.jpg" alt="" width="100%" />
	</div>
	<div class="content360">
		<div class="pagenav">
		<img src="__PUBLIC__/site/images/688cailiaoicon.png" alt="688材料" width="155" height="38" style="float:left;" border="0" />
		<span style="float:right;height:38px;line-height:38px;min-height:38px;color:#6f6f70;">
		<span>首页</span>
		<span>>></span>
		<span>看产品</span>
		<span>>></span>
		<span>688材料</span>
		<?php if(!empty($curCailiao)){?>
		<span>>></span>
		<span><?php echo $curCailiao['title']?></span><?php }?>
		</span>
		</div>
		<div class="box360-cailiao">
                    <div class="arrow dleft" id="arrow_left"><a href="javascript:void(0)" onclick="box_scroll(1, 1)"><img src="__PUBLIC__/site/images/arrow_left.png" border="none" /></a></div>
                    <div class="arrow dright" id="arrow_right"><a href="javascript:void(0)" onclick="box_scroll(2, 1)"><img src="__PUBLIC__/site/images/arrow_right.png" border="none" /></a></div>
		
                    <div class="box-body">
                    <?php if(!empty($curCailiao)){?>
                    <div class="cailiao360-submenu">
                    <div style="float:left;;height:32px;line-height:32px;font-size:14px;font-weight:bold;margin-left:8px;">
                    <a href="__ACTION__" style="color:#fff">
                    <img src="__PUBLIC__/site/images/360cailiao_return.png"  border="none" style="margin-bottom:4px;"/>返回品牌列表
                    </a></div>
                    <div style="float:right;color:#fff;height:32px;line-height:32px;font-size:14px;font-weight:bold;margin-right:12px;">金牌</div>
                    </div>
                    <?php }?>
                    <div class="box-menu"  id="box_menu">
                    <ul id="box_ul">
                    <volist name="cailiao360s" id="cailiao360" offset="0">
			          <li><a href="__ACTION__/id/<?php echo $cailiao360['id']?>/pid/<?php echo $cailiao360['parentid']?>#box_ul"  
			          <?php if($cailiao360['id'] == $curCailiao['id']){ echo ' class="current" '; } ?> ><?php echo $cailiao360['title_t']?></a></li>
                    </volist>
                    </ul>
                    </div>
                    <div class="box-pics">
                    <?php $pic_len = count($pics);?>
	                    <div class="box-pic">
	                    <?php
	                    $len = $pic_len > 3?3:$pic_len;
	                    for($i = 0; $i < $len; $i++){?>
	                    <?php $pic = $pics[0 + $i]?>
	                    <a data-lightbox="roadtrip" href="__ROOT__<?php echo $pic?>"><img src="__ROOT__<?php echo $pic ?>" border="none" /></a>
	                    <?php }?>
	                    </div>
	                    <div class="box-pic">
	                    <?php 
	                    $len = (($pic_len > 6) ? 3 : ($pic_len > 3 ? $pic_len-3 : 0));
	                    for($i = 0; $i < $len; $i++){?>
	                    <?php $pic = $pics[3 + $i]?>
	                    <a data-lightbox="roadtrip" href="__ROOT__<?php echo $pic ?>"><img src="__ROOT__<?php echo $pic ?>" border="none" /></a>
	                    <?php }?>
	                    </div>
	                    <div class="box-pic">
	                    <?php 
	                    $len = (($pic_len > 9) ? 3 : ($pic_len > 6 ? $pic_len-6 : 0));
	                    for($i = 0; $i < $len; $i++){?>
	                    <?php $pic = $pics[6 + $i]?>
	                    <a data-lightbox="roadtrip" href="__ROOT__<?php echo $pic ?>"><img src="__ROOT__<?php echo $pic ?>" border="none" /></a>
	                    <?php }?>
	                    </div>
                    </div>
                    </div>
                    </div>
	</div>
	
	<!--imenux end-->
<div class="cls"></div>
<script src="__PUBLIC__/site/js/jsddm.js" type="text/javascript"></script>
<script src="__PUBLIC__/site/js/common.js"></script>

<script type="text/javascript">
var _$ = function(id){return document.getElementById(id);};
var cookie_key = 'meiping360cailiao_current';
function box_scroll(dir, idx){
    var box_menu = _$("box_menu");
    var box_ul = _$("box_ul");
    var childNodes = box_ul.getElementsByTagName("LI");
    var maxLen = (childNodes.length - 6) * 141 - 1 ;

    
    var off = idx * 144;
    var c_current_off = meiping_cookie.getCookie(cookie_key);
    c_current_off = !c_current_off || isNaN(c_current_off)? 0 : parseInt(c_current_off);
    box_menu.style.left = '0px';
    if(dir == 1){ // left
        if(!box_menu.style.marginLeft){
            box_menu.style.marginLeft = '0px';
        }
        var mleft = parseInt(box_menu.style.marginLeft);
        if(Math.abs(mleft) <= maxLen){
            box_menu.style.marginLeft = parseInt(box_menu.style.marginLeft) - off + "px";
            meiping_cookie.setCookie("meiping360cailiao_current", c_current_off - parseInt(off) );
        }
    }else{ // right
        if(!box_menu.style.marginRight){
            box_menu.style.marginRight = '0px';
        }
        var mleft = parseInt(box_menu.style.marginLeft);
        if(mleft < 0){
            box_menu.style.marginLeft = parseInt(box_menu.style.marginLeft) + off + "px";
            meiping_cookie.setCookie("meiping360cailiao_current", c_current_off + off );
        }
    }
}

function init_current_menu(){
	var c_current_off = meiping_cookie.getCookie(cookie_key);
	
	if(_$("box_menu") && c_current_off){
		_$("box_menu").style.marginLeft =  parseInt(c_current_off) + "px";
	}
	
}

<?php if(!empty($curCailiao)){?>
(function(){
	_$("arrow_left").style.marginTop = '30px';
	_$("arrow_right").style.marginTop = '30px';
})();
<?php }?>

window.onload = function(){
	init_current_menu();
    //tli.className = "first current";
    var box_ul = _$("box_ul");
    var childNodes = box_ul.getElementsByTagName("LI");
    //console.log(childNodes);
    var getALinks = function(node){
        return node.getElementsByTagName('A');
    };
    var nodeRender = function(tli){
        tli.className = "current";
        if(tli.nodeName.toUpperCase() == 'A'){
            tli = tli.parentNode;
        }
        var tnode = tli.nextSibling;
        while(tnode){
            if(tnode.nodeType == 1){
                getALinks(tnode)[0].className = "";
            }
            tnode = tnode.nextSibling;	
            
        }
        
        tnode = tli.previousSibling;
        while(tnode){
            if(tnode.nodeType == 1){
                getALinks(tnode)[0].className = "";
            }
            tnode = tnode.previousSibling;
        }
    };
   
    for(var i = 0, len = childNodes.length; i < len; i++){
         var node = childNodes[i];
         if(node.nodeType == 1){
             node.onclick = function(event){
                event = event || window.event;
                var target = event.target || event.srcElement;
                nodeRender(target);
             };
         }
         
    }

};
</script>
<?php if(empty($curCailiao)){?>
<script type="text/javascript">
meiping_cookie.deleteCookie(cookie_key);
</script>
<?php }?>
  <!--底部-->
<include file="Public:foot" />
<script type="text/javascript" src="__PUBLIC__/site/js/lightbox/js/lightbox-2.6.min.js"></script>
<!--END-->
</body></html>