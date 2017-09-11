<?php
/**
 * Created by PhpStorm.
 * User: daim01
 * Date: 2017/9/11
 * Time: 17:42
 */

namespace Admin\Controller;

use \Think\Controller;

require(THINK_PATH . "/../Snoopy.class.php");

class SpiderController extends Controller {
    public function say(){
        $snoopy = new \Snoopy;

// $snoopy->fetchtext("http://www.php.net/");
// print $snoopy->results;

        $snoopy->fetchlinks("http://www.ci123.com/");
        var_dump($snoopy->results);
    }
}