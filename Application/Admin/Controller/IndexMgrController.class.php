<?php

namespace Admin\Controller;

// 本类由系统自动生成，仅供测试用途
class IndexMgrController extends BaseController {
    
    public function index(){
        $indexDisplays = C("__YYG_INDEX_DISPLAY");
        $indexDisplayList = [];
        foreach($indexDisplays as $dsid => $limitSize){
            $contentEntitys = D("Content")->field('id, title, category_id')->where(["status" => 1, "indexdisplay" => $dsid])->order("topnum desc, `order`,`createtime` desc")->limit($limitSize)->select();
            foreach($contentEntitys as &$contentEntity){
                $contentEntity['category'] = M("category")->where(['id' => $contentEntity['category_id']])->find();
                $contentEntity['is_set_main'] = !empty(M('attac_rel')->where(['ismain' => 1, 'rel_id' => $contentEntity['id']])->find());
            }
            $indexDisplayList[$dsid] = $contentEntitys;
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