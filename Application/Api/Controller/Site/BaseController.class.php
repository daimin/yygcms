<?php
namespace Api\Controller\Site;

use Hashids\Hashids;

class BaseController extends \Site\Controller\BaseController {
	
	public function _initialize(){
		$this->assignOptions();
	}

	public function getPageArgs(){
        $pagesize = intval(I("get.pagesize", 10));
        $pageno = intval(I("get.pageno", 1));
        $start = ($pageno - 1) * $pagesize;
	    return ['pagesize' => $pagesize, 'pageno' => $pageno, 'start' => $start];
    }

    function makeArticlesCanDisplayApi($articles){
        $newArticles = [];

        foreach($articles as $article){
            $article['main_img'] = $this->getMainImg($article['id']);
            $article['category'] = M("category")->where('id='.$article['category_id'])->find();;
            $article['admin'] = M("admins")->where('id='.$article['author_id'])->find();;
            $newArticles []= $article;
        }
        return $newArticles;
    }

}