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
        return $this->unsetNoUseArticleFields($newArticles);
    }

    private function unsetNoUseArticleFields($articles){
        foreach($articles as &$article){
            unset($article['content']);
            unset($article['status']);
            unset($article['embed_code']);
            unset($article['relurl']);
            unset($article['viewnum']);
            unset($article['lastviewtime']);
            unset($article['commentnum']);
            unset($article['lastcommenttime']);
            unset($article['order']);
            unset($article['topnum']);
            unset($article['indexdisplay']);
            unset($article['author_id']);
            unset($article['category_id']);
            unset($article['editor_id']);
            unset($article['main_img']['title']);
            unset($article['main_img']['path']);
            unset($article['main_img']['createtime']);
            unset($article['main_img']['description']);
            unset($article['category']['status']);
            unset($article['category']['createtime']);
            unset($article['category']['modifytime']);
            unset($article['category']['pid']);
            unset($article['admin']['password']);
            unset($article['admin']['createtime']);
            unset($article['admin']['lastlogintime']);
            unset($article['admin']['status']);
            unset($article['admin']['role']);
        }

        return $articles;
    }

}