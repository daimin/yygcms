<?php
// 本类由系统自动生成，仅供测试用途
class ProjectAction extends BaseAction {
    
    
    public function index(){
    	$this->display();
    }
    
    public function fuwubaozhang(){
        $this->display();
    }
    
    public function huanbaobaozhang(){
    	$contentM = M("Content");
    	$huanbaoContent = $contentM->where("`type`='huanbaobaozhang' and `status`='1'")->limit(1)->find();
    	$this->assign("huanbao", $huanbaoContent);
    	$this->display();
    }
    
    /**
     * 获取JSON格式的附件列表
     * @return number
     */
    private function _getAttacs($cid){
    	if(empty($cid)) return 0;
    	$arels = M("attac_rel")->where("`rel_id`='$cid'")->order("RAND()")->limit(6)->select();
    
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
    /**
     * 工程保障
     * @param unknown_type $id
     */
    public function gongchengbaozhang($id=False){
    	$contentD = D("Content");
    	$baozhangs = False;
    	$curBaozhang = False;
    	// 如果没有id，就选择品牌
    	if(empty($id)){
    		$baozhangs = $contentD->where("`type`='Gongchengbaozhang' and `status`='1'")->order("`order`,`createtime` desc")->select();
    	}else if(!empty($id)){
    		$baozhangs = $contentD->where("`type`='Gongchengbaozhang' and `status`='1'")->order("`order`,`createtime` desc")->select();
    		$curBaozhang = $contentD->find($id);
    	}
    	$sel_index = 0;
    	// 工程保障目录
    	if(!empty($baozhangs)){
    		for($i = 0, $len = count($baozhangs); $i < $len; $i++){
    			$baozhang = $baozhangs[$i];
    			$baozhang['attacs'] = $this->_getAttacs($baozhang['id']);
    			$baozhang['relurl'] = relUrl($baozhang['relurl']);
    			$title = $baozhang['title'];
    			if(mStrLen($title) > 8){
    				$title = msubstr($title,0, 8);
    			}
    			if($curBaozhang == False && $id == $baozhang['id']){
    	
    				$curBaozhang = $baozhang;
    			}
    	
    			$baozhang['title_t'] = $title;
    			 
    			$baozhangs[$i] = $baozhang;
    		}
    	}
    	
    	$pics = array();
    	if($curBaozhang != False){
    		$subBaoZhangs = False;
    		$subBaoZhangs = $contentD->where("`type`='Gongchengbaozhang' and `status`='1' and id=".$id)->order("`order`,`createtime` desc")->limit(6)->select();
    		if(count($subBaoZhangs) == 1){
    			$subBaoZhang = $subBaoZhangs[0];
    			$subBaoZhang['attacs'] = $this->_getAttacs($subBaoZhang['id']);
    			foreach($subBaoZhang['attacs'] as $attac){
    				array_push($pics, $attac['path']);
    			}
    		}else{
    		
    			for($i = 0, $len = count($subBaoZhangs); $i < $len; $i++){
    				$subBaoZhang = $subBaoZhangs[$i];
    				$subBaoZhang['attacs'] = $this->_getAttacs($subBaoZhang['id']);
    				if(count($subBaoZhang['attacs']) > 0){
    					array_push($pics, $subBaoZhang['attacs'][0]['path']);
    				}
    			}
    		}
    		
    	}else{
    		//从品牌中随机出6张来
    		$subBaoZhangs = $contentD->where("`type`='Gongchengbaozhang' and `status`='1'")->order("RAND()")->limit(6)->select();
    		for($i = 0, $len = count($subBaoZhangs); $i < $len; $i++){
    			$subBaoZhang = $subBaoZhangs[$i];
    			$subBaoZhang['attacs'] = $this->_getAttacs($subBaoZhang['id']);
    			array_push($pics, $subBaoZhang['attacs'][0]['path']);
    		}
    	}
    	 
    	$this->assign("pics", $pics);
    	$this->assign("curBaozhang", $curBaozhang);
    	$this->assign("baozhangs", $baozhangs);
    	$this->display();
    }
    
    /**
     * 材料保障
     * @param unknown_type $id
     */
    public function cailiaobaozhang($id=False){
    	$contentD = D("Content");
    	$baozhangs = False;
    	$curBaozhang = False;
    	// 如果没有id，就选择品牌
    	if(empty($id)){
    		$baozhangs = $contentD->where("`type`='Cailiaobaozhang' and `status`='1'")->order("`order`,`createtime` desc")->select();
    	}else if(!empty($id)){
    		$baozhangs = $contentD->where("`type`='Cailiaobaozhang' and `status`='1'")->order("`order`,`createtime` desc")->select();
    		$curBaozhang = $contentD->find($id);
    	}
    	$sel_index = 0;
    	// 工程保障目录
    	if(!empty($baozhangs)){
    		for($i = 0, $len = count($baozhangs); $i < $len; $i++){
    			$baozhang = $baozhangs[$i];
    			$baozhang['attacs'] = $this->_getAttacs($baozhang['id']);
    			$baozhang['relurl'] = relUrl($baozhang['relurl']);
    			$title = $baozhang['title'];
    			if(mStrLen($title) > 8){
    				$title = msubstr($title,0, 8);
    			}
    			if($curBaozhang == False && $id == $baozhang['id']){
    				 
    				$curBaozhang = $baozhang;
    			}
    			 
    			$baozhang['title_t'] = $title;
    
    			$baozhangs[$i] = $baozhang;
    		}
    	}
    	 
    	$pics = array();
    	if($curBaozhang != False){
    		$subBaoZhangs = False;
    		$subBaoZhangs = $contentD->where("`type`='Cailiaobaozhang' and `status`='1' and id=".$id)->order("`order`,`createtime` desc")->limit(6)->select();
    		if(count($subBaoZhangs) == 1){
    			$subBaoZhang = $subBaoZhangs[0];
    			$subBaoZhang['attacs'] = $this->_getAttacs($subBaoZhang['id']);
    			foreach($subBaoZhang['attacs'] as $attac){
    				array_push($pics, $attac['path']);
    			}
    		}else{
    
    			for($i = 0, $len = count($subBaoZhangs); $i < $len; $i++){
    				$subBaoZhang = $subBaoZhangs[$i];
    				$subBaoZhang['attacs'] = $this->_getAttacs($subBaoZhang['id']);
    				if(count($subBaoZhang['attacs']) > 0){
    					array_push($pics, $subBaoZhang['attacs'][0]['path']);
    				}
    			}
    		}
    
    	}else{
    		//从品牌中随机出6张来
    		$subBaoZhangs = $contentD->where("`type`='Cailiaobaozhang' and `status`='1'")->order("`order`,RAND()")->limit(6)->select();
    		for($i = 0, $len = count($subBaoZhangs); $i < $len; $i++){
    			$subBaoZhang = $subBaoZhangs[$i];
    			$subBaoZhang['attacs'] = $this->_getAttacs($subBaoZhang['id']);
    			array_push($pics, $subBaoZhang['attacs'][0]['path']);
    		}
    	}
    
    	$this->assign("pics", $pics);
    	$this->assign("curBaozhang", $curBaozhang);
    	$this->assign("baozhangs", $baozhangs);
    	$this->display();
    }
}