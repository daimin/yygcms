<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/11/29
 * Time: 22:02
 */
namespace Site\Widget;

use Site\Controller\BaseController;

class ArticlesPanelWidget extends BaseController {

    public function news(){
        $this->display('Widgets:ArticlesPanel:news');
    }

    public function hots(){
        $this->display('Widgets:ArticlesPanel:hots');
    }

    public function relates(){
        $this->display('Widgets:ArticlesPanel:relates');
    }

}