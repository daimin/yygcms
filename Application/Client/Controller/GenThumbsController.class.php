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

    public function delNoUseUploads(){
        $attacs = M('attac')->select();
        $conts = M('content')->select();
        $contDict = [];
        foreach($conts as $cont){
            $contDict[$cont['id']] = $cont;
        }

        foreach($attacs as $attac){
            $attacRels = M("attac_rel")->where(['att_id' => $attac['id']])->select();
            if(empty($attacRels)){
//                echo "Empty rel, can delete attac ".$attac['id'].' path: '.$attac['path']."\n";
//                $this->delAttac($attac);
            }else{
                $canDel = true;
                foreach($attacRels as $attacRel){
                    if(isset($contDict[$attacRel['rel_id']])){
                        $canDel = false;
                        break;
                    }
                }
                if($canDel){
                    echo "No Rel, can delete attac ".$attac['id']."\n";
                    $this->delAttac($attac);
                }
            }

        }
    }

    private function delAttac($attac){
        $widths = ['100', '200', '600'];
        $attPath = $attac['path'];
        $rpos = strrpos($attPath, '/');
        $attName = substr($attPath, $rpos + 1);

        foreach($widths as $width){
            @unlink('/webser/www/yygcms/'.substr($attPath, 0, $rpos).'/thumbs/'."thumb_".$width.'_'.$attName);;
        }
        @unlink('/webser/www/yygcms/'.$attac['path']);
    }

}