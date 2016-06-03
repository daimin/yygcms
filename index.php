<?php
/*
 * 本系统使用Debug模式，非Debug莫名错误
 * Debug模式下也已开启缓存，见Conf下的debug.php中配置
 */
    define('APP_DEBUG', True); 
    include "config.inc.php";
    
	define('APP_NAME','Site');
	
	define('APP_PATH', './'.APP_NAME.'/');
	

	define('__MP_CORE_PATH__', __MP_SITE_ROOT__.'/Core/');
	require __MP_CORE_PATH__.'ThinkPHP.php';
?>