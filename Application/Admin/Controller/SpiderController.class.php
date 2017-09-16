<?php
/**
 * Created by PhpStorm.
 * User: daim01
 * Date: 2017/9/11
 * Time: 17:42
 */

namespace Admin\Controller;

use \Think\Controller;
use PHPHtmlParser\Dom;



class SpiderController extends Controller {


    /**
     * SpiderController constructor.
     */
    public function __construct()
    {
        ini_set('memory_limit', '512M');
    }

    public function test(){
        $imgsrc = '<img class="aligncenter" title="2" src="http://news.ci123.com/uploads/2017/07/2017-07-27-10450065.jpeg" alt="" width="400" height="300">';
        $reTag = "/src=\"(http:\/\/.*)\.(jpg|png|gif|jpeg)\"/i";

        if (preg_match_all($reTag, $imgsrc, $matchResult)) {
            print_r($matchResult);
        }
    }

    public function testDom(){
        $dom = new Dom;
        $dom->load('http://www.oschina.net/news/88681/programmer-live-guide');
        $aa = $dom->find('img');
        foreach($aa as $aaa){
            echo $aaa->getAttribute('src')."\n";
        }
        $c = $dom->find(".news-content h1");
        echo $c->text;

        $cs = $dom->find(".news-content .from a");
        foreach($cs as $ccs){
            echo $ccs->text;
        }
        $cc = $dom->find(".editor-viewer");
        echo $cc->innerHtml;
    }

    public function handleCi123($url=''){
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
            $isArticleUrl = true;
        }
        $matchArticleUrls = $this->getMatchArticleUrls($sourceURL);
        if(count($matchArticleUrls) > 0){
            foreach($matchArticleUrls as $matchArticleUrl){
                $this->getImgURL($matchArticleUrl);
                $this->handleCi123($url);
            }
        }

    }

    private function getMatchArticleUrls($sourceURL){
        $dom = new Dom;
        $dom->load($sourceURL);
        $as = $dom->find("a");
        $re = '|^http://news\.ci123\.com/article/\d+\.html$|';

        //过滤获取指定的文件地址请求
        $matchArticleUrls = [];
        foreach ($as as $tmp) {
            $tempHref = $tmp->getAttribute('href');
            if (preg_match($re, $tempHref)) {
                $matchArticleUrls []= $tempHref;
            }
        }
        return $matchArticleUrls;
    }

    function getImgURL($siteUrl) {
        $this->printColor("请求的网页地址：".$siteUrl.' ===================================================== ', '34');
        $dom = new Dom;
        $dom->load($siteUrl);

        $titleNode = $dom->find('.postTitle');
        $title =  $titleNode->text;
        $breadCrumbsNodes =  $dom->find('.breadCrumbs')->find("a");
        $category = $breadCrumbsNodes[1]->text;

        $contentNode = $dom->find('.entry');
        $content = $contentNode->innerHtml;

        $imgs = $contentNode->find("img");

        //匹配图片的正则表达式
        $reTag = "/(http:\/\/.*)\.(jpg|png|gif|jpeg)/i";
        foreach($imgs as $img){
            //http://file2.ci123.com/logo2.png
            $imgSrc = $img->getAttribute('src');
            if(preg_match($reTag, $imgSrc, $matchResult)){
                $this->saveImgURL($matchResult[1], $matchResult[2]);
            }
        }

    }

    function saveImgURL($name, $suffix) {
        $this->printColor(sprintf("使用%2.f M\n", round(memory_get_usage() / 1024 / 1024, 6)), '35');

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
            mkdir($imgSavePath, 0777, true);
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