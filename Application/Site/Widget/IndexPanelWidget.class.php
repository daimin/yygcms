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
        $articles = D("content")->field("id, title, intro")->where(["indexdisplay" => 'lunboimgs', 'status' => 1])->order("topnum, modifytime desc")->select();
        $this->assign('articles', $this->makeArticlesCanDisplay($articles));
        $this->display('Widgets:IndexPanel:carousel-imgs');
    }

    public function loginPanel(){
        $this->display('Widgets:IndexPanel:login-panel');
    }

    public function relates(){
        $this->display('Widgets:ArticlesPanel:relates');
    }

}