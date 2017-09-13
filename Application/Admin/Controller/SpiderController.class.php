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
require(THINK_PATH . "/../DiDom/Snoopy.class.php");

class SpiderController extends Controller {

    public function test(){
        $imgsrc = '<img class="aligncenter" title="2" src="http://news.ci123.com/uploads/2017/07/2017-07-27-10450065.jpeg" alt="" width="400" height="300">';
        $reTag = "/src=\"(http:\/\/.*)\.(jpg|png|gif|jpeg)\"/i";

        if (preg_match_all($reTag, $imgsrc, $matchResult)) {
            print_r($matchResult);
        }
    }

    public function handleCi123($url=''){
        $snoopy        = new \Snoopy();
        if(empty($url)){
            $sourceURL = "http://www.ci123.com/";
        }else{
            $this->printColor("Begin Handle $url ======");
            $handled = M("url_handled")->where(['hash' => md5($url), 'url' => $url])->find();
            if(empty($handled)){
                $sourceURL = $url;
                M("url_handled")->data(['hash' => md5($url)])->add();
            }else{
                return;
            }
        }

        $snoopy->fetchlinks($sourceURL);

        $as = $snoopy->results;

        $re = '|^http://news\.ci123\.com/article/\d+\.html$|';

        //过滤获取指定的文件地址请求
        $matchArticleUrls = [];
        foreach ($as as $tmp) {
            if (preg_match($re, $tmp)) {
                $matchArticleUrls []= $tmp;
            }
        }
        if(count($matchArticleUrls) > 0){
            foreach($matchArticleUrls as $matchArticleUrl){
                $this->getImgURL($matchArticleUrl);
                $this->handleCi123($url);
            }
        }

    }

    function getImgURL($siteName) {
        $snoopy = new \Snoopy();
        $snoopy->fetch($siteName);

        $fileContent = $snoopy->results;

        //匹配图片的正则表达式
        $reTag = "/src=\"(http:\/\/.*)\.(jpg|png|gif|jpeg)\"/i";
        if(preg_match_all($reTag, $fileContent, $matchResult)){
            for ($i = 0, $len = count($matchResult[1]); $i < $len; ++$i) {
                $this->saveImgURL($matchResult[1][$i], $matchResult[2][$i]);
            }
        }
    }

    function saveImgURL($name, $suffix) {

        $url = $name.".".$suffix;

        $this->printColor("请求的图片地址：".$url);

        $imgSavePath = "/webser/www/yygcms/Uploads/";
//        $imgId = preg_replace("/^.+\/([0-9\-x]+)$/", "\\1", $name);

        if ($suffix == "gif") {
            $imgSavePath .= "emotion";
        } else {
            $imgSavePath .= "topic";
        }

        if (!file_exists($imgSavePath)){
            mkdir ($imgSavePath, 0777, true);
        }

        $imgSavePath .= ("/".uuidBase62().".".$suffix);

        $imgFile = file_get_contents($url);
        $imgSaved = M("url_handled")->where(['hash' => md5($imgFile)])->find();
        if(!empty($imgSaved)){
            $this->printColor("文件".$imgSavePath."已存在，将不会重复保存", '31');
            return;
        }

        $flag = file_put_contents($imgSavePath, $imgFile);

        if ($flag) {
            M("url_handled")->data(['hash' => md5($imgFile), 'url' => $imgSavePath])->add();
            $this->printColor("文件".$imgSavePath."保存成功", '32');
        }

    }

    function printColor($str, $c='37'){
        echo sprintf("\e[{$c}m%s\e[0m\n", $str);
    }
}