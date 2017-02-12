<?php
//开启调试模式
    define('MP_VERSION', 'v0.02');
	define('APP_DEBUG', True);
	define('APP_NAME','Admin');
    
    define('__PUBLIC__', '/Public/');
    
	//引入入口文件
    
    define('__MP_ADMIN_ROOT__', dirname(__FILE__));

    //网站前端目录
    define('__MP_CORE_PATH__', __MP_ADMIN_ROOT__.'/../Core/');

    require __MP_CORE_PATH__.'ThinkPHP.php';
?>