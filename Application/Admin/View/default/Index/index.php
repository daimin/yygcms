<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>美平网站后台系统</title>
<!-- 设置资源的的初始化路径 -->
<style>
html
{
  scrollbar-base-color:#C0D586;
  scrollbar-arrow-color:#FFFFFF;
  scrollbar-shadow-color:#DEEFC6;
}
</style>
</head>
<frameset rows="65,*" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="<?php echo admin_url("Index/top")?>" name="topFrame" scrolling="no">
  <frameset cols="180,*"  id="btFrame" frameborder="NO" border="0" framespacing="0">
    <frame src="<?php echo admin_url("Index/menu")?>" noresize name="menu" scrolling="yes">
    <frame src="<?php echo admin_url("Index/welcome")?>" noresize name="main" scrolling="yes">
  </frameset>
</frameset>
<noframes>
	<body>您的浏览器不支持框架！</body>
</noframes>
</html>
