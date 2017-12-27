<?php
return array(
    'TMPL_DENY_PHP' => false,
    'DEFAULT_MODULE' => 'Site',
    'LOAD_EXT_CONFIG' => 'db,security',
    'DEFAULT_THEME'  => 'baobaostar',
    'URL_MODEL' => 1, //PATHINFO设置为1，为兼容模式
    'TMPL_TEMPLATE_SUFFIX' => '.php',
    'URL_HTML_SUFFIX'=>'html',
    'VAR_FILTERS'=>'htmlspecialchars',
    'DEFAULT_TIMEZONE'=>'Asia/Shanghai',
    'SESSION_AUTO_START' => true,
    'PERM_ACTIONS' => array("SysMgr", "AdminMgr"),   //编辑者禁止访问的Action
    'SHOW_PAGE_TRACE' => false, // 显示页面Trace信息
    'SHOW_RUN_TIME'    => false, // 运行时间显示,

    // 权限
    '__YYG_EDITOR__' => 2,
    '__YYG_ADMIN__' => 1,
    '__YYG_INVALIDE_MINUTES__' => 30, //token的无效时间
    '__YYG_YUER_STAGE__' => [
        'beiyun' => '备孕',
        'yunqi' => '孕期',
        'fenmian' => '分娩',
        '01sui' => '0-1岁',
        '13sui' => '1-3岁',
        '36sui' => '3-6岁',
    ],
    '__YYG_UPLOAD_DIR__' => '/Uploads',
    '__YYG_INDEX_DISPLAY' => [ //首页展示
        'lunboimgs' => 4,
        'yunyuzhishi' => 7,
        'qingzibaike' => 7,
        'muyinyoupin' => 4,
        'ertonggushi' => 8,
        'ertongdonghua' => 10,
        'fumuketang' => 8,
        'rediandaodu' => 25,
        'tupianwenzhang' => 3,
    ],
    '__YYG_TAG_SIZE__' => 12,
);