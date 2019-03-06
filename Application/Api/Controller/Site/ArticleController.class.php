<?php
namespace Api\Controller\Site;

class ArticleController extends BaseController {

    public function news(){
        $pageArgs = $this->getPageArgs();
        $articles = M("Content")->where(['status' => 1])->order("createtime desc")->limit($pageArgs['start'], $pageArgs['pagesize'])->select();
        $this->jsonReturn($this->makeArticlesCanDisplayApi($articles));
    }
    
}