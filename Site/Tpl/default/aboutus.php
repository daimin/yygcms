<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{$common.title}</title>
<meta name="keywords" content="{$common.keywords}" />
<meta name="description" content="{$common.description}" />
{include file="resources"}
</head>
<body>
<!--头部-->
{include file="head"}
<!--END-->
<!--中部-->
<div id="central">
  <div id="main" class="fn-left">
    <div id="pagenav">
    <!--#include file="bread.html"-->
    </div>
    <div class="sep10"></div>
    <div class="box  pagecontent">
      <div class="boxcontent">
        
        
        <div class="content">{$info.content}</div>
      </div>
    </div>
  </div>
  
<!-- UY BEGIN -->
<div id="uyan_frame"></div>
<script type="text/javascript" id="UYScript" src="http://v1.uyan.cc/js/iframe.js?UYUserId=1794396" async=""></script>
<!-- UY END -->

  <div class="fn-clear"></div>
</div>
<!--END--> 

<!--底部-->
{include file="foot"}
<!--END-->
<script>
function expand_pic(obj){
	$('#index_pic').attr('src',$(obj).children().attr('src'));
	$('#index_pic').attr('alt',$(obj).children().attr('alt'));
}
</script>
</body>
</html>
