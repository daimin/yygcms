<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/8/21
 * Time: 23:08
 */
return [
'URL_ROUTE_RULES'=> [
    'news/:year/:month/:day' => ['News/archive', 'status=1'],
    'news/:id'               => 'News/read',
    'news/read/:id'          => '/news/:1',
     ]
];