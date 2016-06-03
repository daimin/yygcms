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
	<img border="0" src="__PUBLIC__/site/images/banner360.jpg" alt="" width="100%" />
	</div>
	<div class="content360">
		<div class="pagenav">
		<img src="__PUBLIC__/site/images/688taocanicon.png" alt="688套餐" width="147" height="38" style="float:left;" border="0" />
		<span style="float:right;height:38px;line-height:38px;min-height:38px;color:#6f6f70;"><span>首页</span> <span>>></span> <span>看产品</span> <span>>></span> <span>688套餐</span></span>
		</div>
		<div class="box360-taocan">
                    <div class="box-body">
                    <div class="box-menu"  id="box_menu">
                    <ul id="box_ul">
                    
                    <volist name="taocan360s" id="taocan360" offset="0" length="6">
			          <li><a href="__ACTION__/id/<?php echo $taocan360['id']?>#display_pic" 
			          <?php 
			          if($taocan360['id'] == $curTaocan['id']){
			             	echo ' class="current" ';
                      }
                      ?>
><?php echo $taocan360['title_t']?></a></li>

			        </volist>
                    </ul>
                    </div>
                    <?php 
                    $attacs = $curTaocan['attacs'];
                    $attac_len = count($attacs);
                    ?>
                        <div  class="pic-display">
                            <img id="display_pic" src="<?php echo __ROOT__.$curTaocan['attacs'][0]['path']?>"/>
   <?php if($attac_len >= 4){ ?>
	                            <div id="mask_caption"><div class="title"><div><?php echo $curTaocan['title']?></div></div>
	                            
	                                <div class="text">
	                                    <?php
	                                    $title_len = mStrLen($curTaocan['title']);
	                                    $desc = $curTaocan['content'];
	                                    
	                                    $descs = explode("\n", $desc);
	                                    
	                                    $count = 0; 
	                                    foreach($descs as $des){
	                                    	if($count >= 10){
	                                    		break;
	                                    	}
	                                    	?>
	                                     <div><?php echo $des?></div>
	                                    <?php 
	                                        $count++;
	                                    ?>
	                               <?php }?>
	                                </div>
	                        
	                            </div>
    <?php }?>
                        </div>
                        <?php if($attac_len >= 4){?>
                        <div class="pics-list">
                            <?php 
                            $count = 0;
                            
                            foreach($attacs as $attac){
                            	if($count >= 3){
                            		break;
                            	}
                            ?>
                            <a href="javascript:void(0)"><img src="<?php echo __ROOT__.$attac['path'] ?>" /></a>
                            <?php 
                                $count++;
                            ?>
                            <?php }?>
                            <?php 
                            if(count($attacs) > 3){
                            ?>
                            <a style="width:248px;" href="javascript:void(0)"> <img style="float:right;width:248px;" src="<?php echo __ROOT__.$attacs[3]['path'] ?>" /></a>
                            <?php
                            }
                            ?>
                            
                        </div>
                        <?php }else{?>
                        <div style="clear:both">&nbsp;</div>
                        <?php }?>
                    </div>
                    </div>
	</div>
	
	<!--imenux end-->
<div class="cls"></div>
<script src="__PUBLIC__/site/js/jsddm.js" type="text/javascript"></script>
<script type="text/javascript">
var _$ = function(id){return document.getElementById(id);};

$(function(){
    $(".pics-list a img").each(function(i,o){
        $(o).click(function(){
           $("#display_pic").attr({"src":$(this).attr("src")}); 
        });
    });
    
    renderMenu();
    var title = $("#mask_caption .title div");
    
    var title_fontsize = "<?php echo intval((13 + (13 - $title_len) * 1.8)) ?>px";
    if(title && title.length > 0){
    	title = title[0];
    	//console.log(title_fontsize);
    	$(title).css("font-size",title_fontsize);
    	
    }
});

function renderMenu(){
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

}
</script>
  <!--底部-->
<include file="Public:foot" />
<!--END-->
</body></html>