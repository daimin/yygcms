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
        $this->assign('articles', $this->getTopN($this->makeArticlesCanDisplay($articles), 'lunboimgs'));
        $this->display('Widgets:IndexPanel:carousel-imgs');
    }

    public function loginPanel(){
        $this->display('Widgets:IndexPanel:login-panel');
    }

    public function relates(){
        $this->display('Widgets:ArticlesPanel:relates');
    }

    public function fumuKetang(){
        /** @var  $contentService \Common\Service\ContentService*/
        $contentService = D("Content", "Service");
        $articles = $contentService->getContentByIndexDisplay('fumuketang');
        $this->assign('articles', $this->getTopN($this->makeArticlesCanDisplay($articles), 'fumuketang'));
        $this->display('Widgets:IndexPanel:fumu-ketang');
    }

    public function tupwenzhang(){
        /** @var  $contentService \Common\Service\ContentService*/
        $contentService = D("Content", "Service");
        $articles = $contentService->getContentByIndexDisplay('tupianwenzhang');
        $this->assign('articles', $this->getTopN($this->makeArticlesCanDisplay($articles), 'tupianwenzhang'));
        $this->display('Widgets:IndexPanel:tupian-wenzhang');
    }

    public function rediandaodu(){
        /** @var  $contentService \Common\Service\ContentService*/
        $contentService = D("Content", "Service");
        $articles = $contentService->getContentByIndexDisplay('tupianwenzhang');
        $this->assign('articles', $this->getTopN($this->makeArticlesCanDisplay($articles), 'tupianwenzhang'));
        $this->display('Widgets:IndexPanel:redian-daodu');
    }

    private function getTopN($articles, $disId){
        $indexDisplays = C("__YYG_INDEX_DISPLAY");
        return array_slice($articles, 0, intval($indexDisplays[$disId]));
    }

}