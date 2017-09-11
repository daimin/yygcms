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
        $snoopy = new \Snoopy();

        $sourceURL = "http://www.ci123.com/";
        $snoopy->fetchlinks($sourceURL);

        $as = $snoopy->results;
        $re = "/\d+\.html$/";

        //过滤获取指定的文件地址请求
        foreach ($as as $tmp) {
            if (preg_match($re, $tmp)) {
                $this->getImgURL($tmp);
            }
        }
    }

    function getImgURL($siteName) {
        $snoopy = new \Snoopy();
        $snoopy->fetch($siteName);

        $fileContent = $snoopy->results;

        //匹配图片的正则表达式
        $reTag = "/<img[^s]+src=\"(http:\/\/[^\"]+).(jpg|png|gif|jpeg)\"[^\/]*\/>/i";

        if (preg_match($reTag, $fileContent)) {
            $ret = preg_match_all($reTag, $fileContent, $matchResult);

            for ($i = 0, $len = count($matchResult[1]); $i < $len; ++$i) {
                $this->saveImgURL($matchResult[1][$i], $matchResult[2][$i]);
            }
        }
    }

    function saveImgURL($name, $suffix) {

        $url = $name.".".$suffix;

        echo "请求的图片地址：".$url."<br/>";

        $imgSavePath = "/webser/www/yygcms/Uploads/";
        $imgId = preg_replace("/^.+\/([0-9\-x]+)$/", "\\1", $name);

        if ($suffix == "gif") {
            $imgSavePath .= "emotion";
        } else {
            $imgSavePath .= "topic";
        }

        if (!file_exists($imgSavePath)){
            mkdir ($imgSavePath, 0777, true);
        }

        $imgSavePath .= ("/".$imgId.".".$suffix);

        if (is_file($imgSavePath)) {
            unlink($imgSavePath);
            echo "<p style='color:#f00;'>文件".$imgSavePath."已存在，将被删除</p>";
        }

        $imgFile = file_get_contents($url);
        $flag = file_put_contents($imgSavePath, $imgFile);

        if ($flag) {
            echo "<p>文件".$imgSavePath."保存成功</p>";
        }

    }
}