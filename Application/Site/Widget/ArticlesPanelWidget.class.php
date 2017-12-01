<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/11/29
 * Time: 22:02
 */
namespace Site\Widget;

use Hashids\Hashids;
use Site\Controller\BaseController;

class ArticlesPanelWidget extends BaseController {

    public function news(){
        $articles = M("Content")->where(['status' => 1])->order("createtime desc")->limit(8)->select();
        $this->assign('newArticles', $this->makeArticlesCanDisplay($articles));
        $this->display('Widgets:ArticlesPanel:news');
    }

    public function hots(){
        $articles = M("Content")->where(['status' => 1])->order("viewnum desc")->limit(8)->select();
        $this->assign('hotArticles', $this->makeArticlesCanDisplay($articles));
        $this->display('Widgets:ArticlesPanel:hots');
    }

    public function relates($mainArticle){
        $articles = M("Content")->where(['status' => 1])->order("viewnum desc")->limit(8)->select();
        $this->assign('relArticles', $this->makeArticlesCanDisplay($articles));
        $this->display('Widgets:ArticlesPanel:relates');
    }

    private function makeArticlesCanDisplay($articles){
        $newArticles = [];
        $hashids = new Hashids();

        foreach($articles as $article){
            $article['link_url'] = site_url('/article/view/id/'.$hashids->encode($article['id']));
            $newArticles []= $article;
        }
        return $newArticles;
    }

    //中文分词
    public function pa(){
        Vendor('phpanalysis.phpanalysis');
        $str = 'Python装饰器与面向切面编程';
        $pa = new \PhpAnalysis('utf-8', 'utf-8', false);
        $pa::$loadInit = false;
        $pa->LoadDict();
        $pa->SetSource($str);
        $pa->StartAnalysis( false );
        $tags = $pa->GetFinallyResult();
        var_dump($tags);
    }

}