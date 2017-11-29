<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/11/29
 * Time: 22:02
 */
namespace Site\Widget;

use Site\Controller\BaseController;

class IndexPanelWidget extends BaseController {

    public function carouselImgs(){
        $this->display('Widgets:IndexPanel:carousel-imgs');
    }

    public function loginPanel(){
        $this->display('Widgets:IndexPanel:login-panel');
    }

    public function relates(){
        $this->display('Widgets:ArticlesPanel:relates');
    }

}