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

function genThumbs($filepath, $opt, $rootPath, $savePath, $saveName){
    $widths = explode(',', $opt->thumbMaxWidth);
    $heights = explode(',', $opt->thumbMaxHeight);
    foreach($widths as $idx=>$width){
        $image = new \Think\Image();
        $image->open($filepath);
        $tbpath = $rootPath.$savePath.$opt->thumbPrefix.$width.'_'.$saveName;
        $image->thumb($width, $heights[$idx],\Think\Image::IMAGE_THUMB_CENTER)->save($tbpath);
    }

}

function get_absolute_path($path) {
    $path = str_replace(array('/', '\\'), DIRECTORY_SEPARATOR, $path);
    $parts = array_filter(explode(DIRECTORY_SEPARATOR, $path), 'strlen');
    $absolutes = array();
    foreach ($parts as $part) {
        if ('.' == $part) continue;
        if ('..' == $part) {
            array_pop($absolutes);
        } else {
            $absolutes[] = $part;
        }
    }
    return implode(DIRECTORY_SEPARATOR, $absolutes);
}