<?php
return array(
    'TMPL_DENY_PHP' => false,
    'DEFAULT_MODULE' => 'Site',
    'LOAD_EXT_CONFIG' => 'db',
    'DEFAULT_THEME'  => 'baobaostar',
    'URL_MODEL' => 1, //PATHINFO设置为1，为兼容模式
    'TMPL_TEMPLATE_SUFFIX' => '.php',
    'URL_HTML_SUFFIX'=>'html',
    'VAR_FILTERS'=>'htmlspecialchars',
    'DEFAULT_TIMEZONE'=>'Asia/Shanghai',
    'SESSION_AUTO_START' => true,
    'PERM_ACTIONS' => array("SysMgr", "AdminMgr"),   //编辑者禁止访问的Action
    'SHOW_PAGE_TRACE' => false, // 显示页面Trace信息
    'SHOW_RUN_TIME'    => false, // 运行时间显示

    //自定义配置 //////////////////////////////////////////////////////

    // 权限
    '__YYG_EDITOR__' => 2,
    '__YYG_ADMIN__' => 1,
    // 密钥
    "__YYG_SECURE_KEY__" => 'he4ApQm1Sjm8GRLj',
    '__YYG_AUTH_NAME__' => 'yyg_yFqkffobPm0kO4GR',
    '__YYG_YUER_STAGE__' => [
        'beiyun' => '备孕',
        'yunqi' => '孕期',
        'fenmian' => '分娩',
        '01sui' => '0-1岁',
        '13sui' => '1-3岁',
        '36sui' => '3-6岁',
    ],
    '__YYG_UPLOAD_DIR__' => '/Upload',
);