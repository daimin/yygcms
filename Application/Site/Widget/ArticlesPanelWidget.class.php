<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/11/29
 * Time: 22:02
 */
namespace Site\Widget;

use Common\Service\WordAnalysisService;
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
        $tags = M("tags")->where(['cid' => $mainArticle['id']])->select();
        if(empty($tags)){
            /** @var  $wordAnalysisService  WordAnalysisService*/
            $wordAnalysisService = D("Common/WordAnalysis", "Service");
            $tags = $wordAnalysisService->analysis($mainArticle['title']);
        }

        $relArticles = [];
        foreach($tags as $tag){
            $relArticles []= M("Content")->where(['status' => ['eq', 1], 'title' => ['like', '%'.$tag.'%'], 'id' => ['neq', $mainArticle['id']]])->order("createtime desc")->select();
        }

        $listArticles = [];
        while(1){
            if(count($listArticles) >= 8){
                break;
            }
            $isAllEmpty = true;
            foreach($relArticles as &$relArts){
                if(!empty($relArts)){
                    $listArticles[]= array_shift($relArts);
                    $isAllEmpty = false;
                }
            }

            if($isAllEmpty){
                break;
            }
        }

        $this->assign('relArticles', $this->makeArticlesCanDisplay($listArticles));
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