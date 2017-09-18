<?php
namespace Site\Controller;
use Hashids\Hashids;

class ArticleController extends BaseController {
	
    public function view($id){
        $hashids = new Hashids();

        $artRet = $hashids->decode($id);
        if(empty($artRet)){
            $this->error("找不到页面");
        }
        $artId = $artRet[0];
        $articleContent = M("content")->where(['id' => $artId])->find();
        $this->assign('article', $articleContent);
    	$this->display();
    }
    
}