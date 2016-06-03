<?php
// 本类由系统自动生成，仅供测试用途
class P360Action extends BaseAction {
    public function index(){
    	$contentD = D("Content");
    	$indexs = $contentD->where("`type`='index' and `status`='1'")->order("`order`,`createtime` desc")->select();
    	$opt = $this->getOptions();
    	if(!empty($indexs)){
    		for($i = 0, $len = count($indexs); $i < $len; $i++){
    			$idx = $indexs[$i];
    			$idx['relurl'] = relUrl($idx['relurl']);
    			$attacs = $this->getContentAttach($idx['id']);
    			$idx['attacs'] = $attacs;
    			$indexs[$i] = $idx;
    		}
    	}
    	$this->assign("indexs", $indexs);
    	
    	$dnews = $contentD->where("`type`='dnews' and `status`='1'")->order("`order`,`createtime` desc")->select();

    	if(!empty($dnews)){
    		for($i = 0, $len = count($dnews); $i < $len; $i++){
    			$dnew = $dnews[$i];
    			$dnew['relurl'] = relUrl($dnew['relurl']);
    			$title = $dnew['title'];
    			if(mStrLen($title) > 22){
    				$title = msubstr($title,0, 22);
    			}
    			$dnew['title'] = $title;
    			$dnews[$i] = $dnew;
    		}
    	}
    	
    	$dcasts = $contentD->where("`type`='dcast' and `status`='1'")->order("`order`,`createtime` desc")->select();
    	
    	if(!empty($dcasts)){
    		for($i = 0, $len = count($dcasts); $i < $len; $i++){
    			$dcast = $dcasts[$i];
    			$dcast['relurl'] = relUrl($dcast['relurl']);
    			$title = $dcast['title'];
    			if(mStrLen($title) > 22){
    				$title = msubstr($title,0, 22);
    			}
    			$dcast['title'] = $title;
    			$dcasts[$i] = $dcast;
    		}
    	}
    	
    	$this->assign("indexs", $indexs);
    	$this->assign("dnews", $dnews);
    	$this->assign("dcasts", $dcasts);
    	$this->display();
    }
    
    public function youshi(){
    	$this->display();
    }
    
    public function taocan($id=False){
    	$contentD = D("Content");
    	$taocan360s = $contentD->where("`type`='360taocan' and `status`='1'")->order("`order`,`createtime` desc")->select();
    	$curTaocan = False;
    	if(!empty($taocan360s)){
    		for($i = 0, $len = count($taocan360s); $i < $len; $i++){
    			$taocan360 = $taocan360s[$i];
    			$taocan360['attacs'] = $this->_getAttacs($taocan360['id']);
    			$taocan360['relurl'] = relUrl($taocan360['relurl']);
    			$title = $taocan360['title'];
    			if(mStrLen($title) > 8){
    				$title = msubstr($title,0, 8);
    			}
    			if($curTaocan == False && $id == $taocan360['id']){
    				
    				$curTaocan = $taocan360;
    			}
    			
    			$taocan360['title_t'] = $title;
    			$taocan360s[$i] = $taocan360;
    		}
    	}
    	
    	if($curTaocan == False){
    		$curTaocan = $taocan360s[0];
    	}
    	$this->assign("curTaocan", $curTaocan);
    	$this->assign("taocan360s", $taocan360s);
    	$this->display();
    }
    
    /**
     * 获取JSON格式的附件列表
     * @return number
     */
    private function _getAttacs($cid){
    	if(empty($cid)) return 0;
    	$arels = M("attac_rel")->where("`rel_id`='$cid'")->select();
    
    	$dataJsons = array();
    	$attacM = M("attac");
    	$attacs = array();
    	foreach($arels as $ar){
    		$att_id = $ar['att_id'];
    		$attac = $attacM->find($att_id);
    		$attac['description'] = $this->_splitAttacDesc($attac['description']);
    		array_push($attacs, $attac);
    	}
        return $attacs;
    }
    
    private function _splitAttacDesc($desc){
    	if(empty($desc)) return array();
    	$descs = explode("<br/>", $desc);
    	return $descs;
    }
    
    
    public function cailiao($id=False, $pid=False){
    	$contentD = D("Content");
    	$cailiao360s = False;
    	$curCailiao = False;
    	// 如果没有id，就选择品牌
    	if(empty($id) && empty($pid)){
    		$cailiao360s = $contentD->where("`type`='360cailiao' and `status`='1' and parentid=0")->order("`order`,`createtime` desc")->select();
    	}else if(!empty($id) && empty($pid)){
    		$cailiao360s = $contentD->where("`type`='360cailiao' and `status`='1' and parentid=$id")->order("`order`,`createtime` desc")->select();
    		$curCailiao = $contentD->find($id);
    	}else if(!empty($id) && !empty($pid)){
    		$cailiao360s = $contentD->where("`type`='360cailiao' and `status`='1' and parentid=$pid")->order("`order`,`createtime` desc")->select();
    		$curCailiao = $contentD->find($id);
    	}
    	$sel_index = 0;
        // 材料目录
    	if(!empty($cailiao360s)){
    		for($i = 0, $len = count($cailiao360s); $i < $len; $i++){
    			$cailiao360 = $cailiao360s[$i];
    			$cailiao360['attacs'] = $this->_getAttacs($cailiao360['id']);
    			$cailiao360['relurl'] = relUrl($cailiao360['relurl']);
    			$title = $cailiao360['title'];
    			if(mStrLen($title) > 8){
    				$title = msubstr($title,0, 8);
    			}
    			if($curCailiao == False && $id == $cailiao360['id']){
    		
    				$curCailiao = $cailiao360;
    			}
    		
    			$cailiao360['title_t'] = $title;
    			
    			$cailiao360s[$i] = $cailiao360;
    		}
    	}

    	$pics = array();
    	
    	if($curCailiao != False){
    		//$curCailiao = $cailiao360s[0];
    		$subCailiaos = False;
    		if(empty($pid)){
    			$subCailiaos = $contentD->where("`type`='360cailiao' and `status`='1' and parentid=".$curCailiao['id'])->order("`order`,`createtime` desc")->limit(9)->select();
    		}else{
    			$subCailiaos = $contentD->where("`type`='360cailiao' and `status`='1' and id=".$id)->order("`order`,`createtime` desc")->limit(9)->select();
    			 
    		}
    		
    		
    		if(count($subCailiaos) == 1){
    			$subCailiao = $subCailiaos[0];
    			$subCailiao['attacs'] = $this->_getAttacs($subCailiao['id']);
    			foreach($subCailiao['attacs'] as $attac){
    				array_push($pics, $attac['path']);
    			}
    		}else{

    			for($i = 0, $len = count($subCailiaos); $i < $len; $i++){
    				$subCailiao = $subCailiaos[$i];
    				$subCailiao['attacs'] = $this->_getAttacs($subCailiao['id']);
    				if(count($subCailiao['attacs']) > 0){
    					array_push($pics, $subCailiao['attacs'][0]['path']);
    				}
    			}
    		}
    	}else{
    		//从品牌中随机出9张来
    		$subCailiaos = $contentD->where("`type`='360cailiao' and `status`='1' and parentid<>0")->order("`order`,RAND()")->limit(9)->select();
    		for($i = 0, $len = count($subCailiaos); $i < $len; $i++){
    			$subCailiao = $subCailiaos[$i];
    			$subCailiao['attacs'] = $this->_getAttacs($subCailiao['id']);
    			if(count($subCailiao['attacs']) > 0){
    				array_push($pics, $subCailiao['attacs'][0]['path']);
    			}
    		}
    	}
    	
    	$this->assign("pics", $pics);
    	$this->assign("subCailiaos", $subCailiaos);
    	$this->assign("curCailiao", $curCailiao);
    	$this->assign("cailiao360s", $cailiao360s);
    	$this->display();
    }
    
    
}