<?php
/**
 * Created by PhpStorm.
 * User: daim01
 * Date: 2017/9/11
 * Time: 17:42
 */

namespace Client\Controller;

use Common\Model\ContentModel;
use Common\Model\OptionsModel;
use PHPHtmlParser\Dom;


class GenThumbsController extends BaseController {

    public function handle(){
        $attacs = M("attac")->select();
        foreach ($attacs as $attac){
            $path = $attac['path'];
            $uploadDir = C("__YYG_UPLOAD_DIR__");
            $savePath = substr($path, strlen($uploadDir), strrpos($path, '/') - strlen($uploadDir));
            $saveName = substr($path, strrpos($path, '/') + 1);
            $realPath = THINK_PATH.'../'.$path;
            if(!file_exists($realPath)){
                continue;
            }
            echo genThumbs($realPath, OptionsModel::getOptions(), THINK_PATH.'../'.C("__YYG_UPLOAD_DIR__"), $savePath.'/thumbs/', $saveName);
        }

    }


}