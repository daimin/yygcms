<?php
if(!defined("YYG_VERSION")){
	define('YYG_VERSION', 'v0.02');
	
	//引入入口文件
}

/* 系统配置 */
$MPConfig =  array(
	// 添加数据库配置信息
	'DB_TYPE'   => 'mysql', // 数据库类型
	'DB_HOST'   => '127.0.0.1', // 服务器地址
	'DB_NAME'   => 'yygcms', // 数据库名
	'DB_USER'   => 'root', // 用户名
	'DB_PWD'    => 'Dai253685_', // 密码
	'DB_PORT'   => 3306, // 端口
	'DB_PREFIX' => 'yyg_', // 数据库表前缀
	'DEFAULT_THEME'  => 'baobaostar',
	'URL_MODEL' => 1, //PATHINFO设置为1，为兼容模式
    'TMPL_TEMPLATE_SUFFIX' => '.php',
    'URL_HTML_SUFFIX'=>'html',
    'VAR_FILTERS'=>'htmlspecialchars',
   'DEFAULT_TIMEZONE'=>'Asia/Shanghai',
   'SESSION_AUTO_START' =>True,
   'PERM_ACTIONS' => array("SysMgr", "AdminMgr"),   //编辑者禁止访问的Action
   '__MP_UPLOAD_DIR__' => '/Upload',
   'SHOW_PAGE_TRACE' =>True, // 显示页面Trace信息
   'SHOW_RUN_TIME'    => True, // 运行时间显示

	//自定义配置 //////////////////////////////////////////////////////


	// 权限
	'__YYG_EDITOR__' => 2,
	'__YYG_ADMIN__' => 1,
	// 密钥
	"__YYG_SECURE_KEY__" => 'bc0abba426e9b7e8a35fa5b29f6f724b',
	'__YYG_AUTH_NAME__' => 'mp_4961f5d6d3ceb39508b538ad47ac5e72',
	'__MP_DECO_NAME__' => 'mp_deco_4961f5d6d3ceb39508b538ad47ac5e72',
);

