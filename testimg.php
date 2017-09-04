<?php
    include 'Snoopy.class.php';
    
    $snoopy = new Snoopy();
    
    $sourceURL = "http://www.ci123.com/";
    $snoopy->fetchlinks($sourceURL);
    
    $a = $snoopy->results;
    $re = "/\d+\.html$/";
    
    //过滤获取指定的文件地址请求
    foreach ($a as $tmp) {
        if (preg_match($re, $tmp)) {
            getImgURL($tmp);
        }
    }
    
    function getImgURL($siteName) {
        $snoopy = new Snoopy();
        $snoopy->fetch($siteName);
        
        $fileContent = $snoopy->results;
        
        //匹配图片的正则表达式
        $reTag = "/<img[^s]+src=\"(http:\/\/[^\"]+).(jpg|png|gif|jpeg)\"[^\/]*\/>/i";
        
        if (preg_match($reTag, $fileContent)) {
            $ret = preg_match_all($reTag, $fileContent, $matchResult);
            
            for ($i = 0, $len = count($matchResult[1]); $i < $len; ++$i) {
                saveImgURL($matchResult[1][$i], $matchResult[2][$i]);
            }
        }
    }
    
    function saveImgURL($name, $suffix) {

        $url = $name.".".$suffix;
        
        echo "请求的图片地址：".$url."<br/>";
        
        $imgSavePath = "/webser/www/Snoopy-2.0.0/ci123.com/";
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