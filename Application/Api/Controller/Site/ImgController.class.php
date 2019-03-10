<?php

namespace Api\Controller\Site;

class ImgController extends BaseController
{

    public function thumb($img = '', $s = 100)
    {
        $imgpath = urldecode(urldecode(base64_decode($img)));
        $this->suolue(THINK_PATH.'..'.$imgpath, $s, $s);

    }

    function suolue($name, $w1, $h1)
    {
        function getinfo($name)
        {

            //getimagesize($dname)函数可以动态的获取图片类型，大小，宽度和高度等
            $info = getimagesize($name);
            $width = $info[0];
            $height = $info[1];
            $mime = $info['mime'];

            switch ($mime) {
                case 'image/jpeg':
                    $res = imagecreatefromjpeg($name);
                    break;
                case 'image/gif':
                    $res = imagecreatefromgif($name);
                    break;
                case 'image/png':
                    $res = imagecreatefrompng($name);
                    break;
                case 'image/wbmp':
                    $res = imagecreatefromwbmp($name);
                    break;
            }
            return array('width' => $width, 'height' => $height, 'res' => $res);
        }

        $info = getinfo($name);
        $width = $info['width'];
        $height = $info['height'];
        $res = $info['res'];
        $scale = max($w1/$width, $h1/$height);
        //设置缩略图的坐标及宽度和高度
        $w = $w1/$scale;
        $h = $h1/$scale;
        $x = ($width - $w)/2;
        $y = ($height - $h)/2;

        //3,创建一个画布，画布的宽度，高度为要锁房的宽度和高度
        $img = imagecreatetruecolor($w1, $h1);
        // 调整默认颜色
        $color = imagecolorallocate($img, 255, 255, 255);
        imagefill($img, 0, 0, $color);

        //4,开始把图片重新设置大小
        imagecopyresampled($img, $res, 0, 0, $x, $y, $w1, $h1, $w, $h);

        //5,输出图像
        // header("content-type:image/png");
        //5,会趋于扩展名，生成新文件名，保存图像
        $ext = pathinfo($name, PATHINFO_EXTENSION);
        // imagepng($img);
        switch (strtolower($ext)) {
            case 'jpg':
            case 'jpeg':
            case 'jpe':
                header('content-type: image/jpeg');
                imagejpeg($img);
                break;
            case 'png':
                header('content-type: image/png');
                imagepng($img);
                break;
            case 'gif':
                header('content-type: image/gif');
                imagegif($img);
                break;
            case 'bmp':
            case 'wbmp':
            header('content-type: image/vnd.wap.wbmp');
            imagewbmp($img);
                break;
        }
        //销毁资源
        imagedestroy($res);
        imagedestroy($img);
    }
    
}