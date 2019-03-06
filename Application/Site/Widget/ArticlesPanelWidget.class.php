<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/11/29
 * Time: 22:02
 */
namespace Site\Widget;

use Common\Service\WordAnalysisService;
use Site\Controller\BaseController;

class ArticlesPanelWidget extends BaseController {

    public function news(){
        $articles = M("Content")->where(['status' => 1])->order("createtime desc")->limit(8)->select();
        $this->assign('newArticles', $this->makeArticlesCanDisplay($articles));
        $this->display('Widgets:ArticlesPanel:news');
    }

    public function hots(){

        $this->assign('hotArticles', $this->makeArticlesCanDisplay($this->getHotArticles()));
        $this->display('Widgets:ArticlesPanel:hots');
    }

    private function getHotArticles(){
        $year100mins = 51264000.0;
        //3 * (51264000 - (time() - strtotime('2017-12-03 11:12:24'))/60) / 51264000 * 10 +  30 * (51264000 - (time() - strtotime('2017-12-04 14:12:24'))/60) / 51264000 * 2;
        $articles = M("Content")->field('`id`,viewnum,lastviewtime,commentnum,lastcommenttime')->where(['status' => 1])->select();
        $articleRanks = [];
        foreach($articles as $article){
            $lastcommenttime = strtotime($article['lastcommenttime']);
            if($lastcommenttime < 0){
                $lastcommenttime = 0;
            }
            $lastviewtime = strtotime($article['lastviewtime']);
            if($lastviewtime < 0){
                $lastviewtime = 0;
            }
            $articleRanks[$article['id']] = $article['commentnum'] * ($year100mins - (time() - $lastcommenttime)/ 60) * 15  + $article['viewnum'] * ($year100mins - (time() - $lastviewtime) / 60) * 1;
        }
        arsort($articleRanks);
        $subArticleRanks = array_slice(array_keys($articleRanks), 0, 8);
        $hotArticles = M("Content")->where(['id' => ['in', $subArticleRanks]])->select();
        $rankHotArticles = [];
        foreach($subArticleRanks as $rankId){
            foreach($hotArticles as $hotArticle){
                if($hotArticle['id'] == $rankId){
                    $rankHotArticles []= $hotArticle;
                    break;
                }
            }
        }

        return $rankHotArticles;
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

        if(empty($listArticles)){
            $listArticles = $this->getRandomArticles();
        }

        $this->assign('relArticles', $this->makeArticlesCanDisplay($listArticles));
        $this->display('Widgets:ArticlesPanel:relates');
    }

    public function getRandomArticles(){
        return M("Content")->where(['status' => 1])->order("RAND()")->limit(8)->select();
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