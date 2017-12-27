<?php

namespace Admin\Controller;

// 本类由系统自动生成，仅供测试用途
class IndexMgrController extends BaseController {
    
    public function index(){
        $indexDisplays = C("__YYG_INDEX_DISPLAY");
        $indexDisplayList = [];
        /** @var  $contentService \Common\Service\ContentService*/
        $contentService = D("Content", "Service");
        foreach($indexDisplays as $dsid => $limitSize){
            $contentEntitys = $contentService->getContentByIndexDisplay($dsid);
            foreach($contentEntitys as &$contentEntity){
                $contentEntity['category'] = M("category")->where(['id' => $contentEntity['category_id']])->find();
                $contentEntity['is_set_main'] = !empty(M('attac_rel')->where(['ismain' => 1, 'rel_id' => $contentEntity['id']])->find());
            }
            $indexDisplayList[$dsid] = ['articles' => $contentEntitys, 'limit_size' => $limitSize];
        }
        $this->assign('indexDisplayList', $indexDisplayList);
        $this->display();
	}
    

    public function cancelDisplayIndex(){
        $cid = I("post.id");
        $contentEntity = D("Content")->where(["id" => $cid])->find();
        if(empty($contentEntity)){
            $this->jsonReturn(false, '文章不存在');
        }
        $contentEntity['indexdisplay'] = '';
        D("Content")->where("`id`='$cid'")->save(['indexdisplay' => '']);
        $this->jsonReturn(true);
    }
   
}