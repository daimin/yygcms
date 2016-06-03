<?php
// 本类由系统自动生成，仅供测试用途
class FuwuAction extends BaseAction {
    
    
    public function index(){
    	$this->display();
    }
    
    public function sigemianfei(){
        $this->display();
    }
    
    public function onesite(){
        $contentM = M("Content");
        $onesiteContent = $contentM->where("`type`='onesite' and `status`='1'")->limit(1)->find();
        $this->assign("onesite", $onesiteContent);
        $this->display();
    }
    
}