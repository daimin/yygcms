<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/12/3
 * Time: 21:22
 */

namespace Client\Controller;
use \Think\Controller;

class BaseController extends Controller
{

    //黑色=30，红色=31，绿色=32，黄色=33，蓝色=34，洋红=35，青色=36，白色=37
    const ECHO_RED = '31';
    const ECHO_BLACK = '30';
    const ECHO_GREEN = '32';
    const ECHO_YELLOW = '33';
    const ECHO_BLUE = '34';
    const ECHO_MAGENTA = '35';
    const ECHO_CYAN = '36';
    const ECHO_WHITE = '37';

    /**
     * SpiderController constructor.
     */
    public function __construct()
    {
        ini_set('memory_limit', '512M');
    }

    function printColor($str, $c=self::ECHO_WHITE){
        echo sprintf("\e[{$c}m%s\e[0m\n", $str);
    }
}