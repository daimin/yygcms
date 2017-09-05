<?php
/**
 * Created by PhpStorm.
 * User: daim01
 * Date: 2017/9/5
 * Time: 16:17
 */

function admin_url($url){
    return str_replace('index.php/', '', __MODULE__.'/'.$url);
}