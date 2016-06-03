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
  <div class="error404">
  	<div class="taglist">
    推荐标签：
    	<!--list:{table="tags" rand="true" limit="7"}-->
			<a href="__APP__/tags-{$list.name}/" title="{$list.name}">{$list.name}</a>
   		<!--/list-->
    </div>
    <div class="home">
    <a href="__APP__/">返回{$sys.sitename}首页</a>
    </div>
  </div>
</div>
<!--END--> 

<!--底部-->
{include file="foot"}
<!--END-->

</body>
</html>
