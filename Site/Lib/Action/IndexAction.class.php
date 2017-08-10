<?php

class IndexAction extends BaseAction {
	
    public function index(){
//    	$indexs = D("Content")->where("`type`='index' and `status`='1'")->order("`order`,`createtime` desc")->select();
//    	$opt = $this->getOptions();
//    	if(!empty($indexs)){
//    		for($i = 0, $len = count($indexs); $i < $len; $i++){
//    			$idx = $indexs[$i];
//    			$idx['relurl'] = relUrl($idx['relurl']);
//    			$attacs = $this->getContentAttach($idx['id']);
//    			$idx['attacs'] = $attacs;
//    			$indexs[$i] = $idx;
//    		}
//    	}
//    	$this->assign("indexs", $indexs);
//
//    	$dnews = D("Content")->where("`type`='dnews' and `status`='1'")->order("`order`,`createtime` desc")->select();
//
//    	if(!empty($dnews)){
//    		for($i = 0, $len = count($dnews); $i < $len; $i++){
//    			$dnew = $dnews[$i];
//    			$dnew['relurl'] = relUrl($dnew['relurl']);
//    			$title = $dnew['title'];
//    			if(mStrLen($title) > 22){
//    				$title = msubstr($title,0, 22);
//    			}
//    			$dnew['title'] = $title;
//    			$dnews[$i] = $dnew;
//    		}
//    	}
//
//    	$dcasts = D("Content")->where("`type`='dcast' and `status`='1'")->order("`order`,`createtime` desc")->select();
//
//    	if(!empty($dcasts)){
//    		for($i = 0, $len = count($dcasts); $i < $len; $i++){
//    			$dcast = $dcasts[$i];
//    			$dcast['relurl'] = relUrl($dcast['relurl']);
//    			$title = $dcast['title'];
//    			if(mStrLen($title) > 22){
//    				$title = msubstr($title,0, 22);
//    			}
//    			$dcast['title'] = $title;
//    			$dcasts[$i] = $dcast;
//    		}
//    	}
//
//    	$this->assign("indexs", $indexs);
//    	$this->assign("dnews", $dnews);
//    	$this->assign("dcasts", $dcasts);
    	$this->display();
    }
    
    
    public function jiazhuangliucheng(){
    	$this->display();
    }
    
    
}