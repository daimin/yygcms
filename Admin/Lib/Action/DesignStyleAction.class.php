<?php
// 本类由系统自动生成，仅供测试用途
class DesignStyleAction extends BaseAction {
	
    public function index($o_keyword = '', $sort=''){
    	import('ORG.Util.Page');// 导入分页类
    	$styleD = D("Style");
    	if(empty($o_keyword)){
    		$o_keyword = I("o_keyword");
    	}
    	$map = array();
    	if(!empty($o_keyword)){
    		$map['name|createtime'] = array('like', '%'.$o_keyword.'%');
    	}
    	$opts = $this->getOptions();
    	$count      = $styleD->where($map)->count();// 查询满足要求的总记录数
    	$Page       = new Page($count, $opts->pageSize);// 实例化分页类 传入总记录数和每页显示的记录数
    		
    	
    		
    	$Page->parameter   =   "&o_keyword=".$o_keyword.'&sort='.$sort;;
    		
    	$show       = $Page->show();// 分页显示输出
    	$designers = $styleD->where($map)->order("createtime $sort")->limit($Page->firstRow.','.$Page->listRows)->select();
    	$designersN = array();
    	foreach($designers as $des){
    		
    		$des['photo'] = url($des['photo'], $opts->siteUrl);
    		$des['style'] = $this->_getStyle($des['id']);
    		array_push($designersN, $des);
    	}
    	$this->assign("designers", $designersN);
    	$this->assign("styles", C('Design_Styles'));
    	$this->assign('sort', $sort);
    	$this->assign('page',$show);// 赋值分页输出
    	$this->display();
	}
	

	private function _getStyle($sid, $asStr = True){
		$styleRelM = M("style_rel");
		$styleCfg = C('Design_Styles');
		$styles = $styleRelM->where("`sid`=$sid")->select();
		
		$ss = array();
		foreach($styles as $s){
			array_push($ss, $styleCfg[$s['style']]);
		}
		//print_r($ss);
		if($asStr){
			return implode(",", $ss);
		}
		
		return $ss;
	}
	
	
	
	public function add(){
		if($this->isGet()){
			$this->assign("styles", C('Design_Styles'));
			$this->display();
		}else{
			$styleD = D("Style");
			if (!$styleD->create(False, 1)){
				// 如果创建失败 表示验证没有通过 输出错误提示信息
				$this->error($styleD->getError());
				exit();
			}else{	
				$styles = I("style");
				if(empty($styles)){
				   $this->error("设计风格不能为空！");		
				}
				
				$cid = $styleD->add();
				$this->_addStyles($cid, $styles);
				
				$this->_addAttac($cid);
				//Log::write("sublist ".$pid);
				$this->success("添加文档成功", __URL__.'/index');
			
			}
		}
	}
	
	private function _addStyles($sid, $styles){
		$styleRelM = M("style_rel");

		foreach ($styles as $s){
			$data['sid'] = $sid;
			$data['style'] = $s;
			$styleRelM->add($data, array(), True);
		}
	}
	
	public function edit($cid=False){
		if($this->isGet()){
			$styleD = D("Style");
			$styleObj = $styleD->find($cid);
			$this->assign("styles", C('Design_Styles'));
			$styleObj['style'] = $this->_getStyle($cid, False);
			
			$this->assign("styleObj", $styleObj);
			$opts = $this->getOptions();
			$this->display();
				
		}else{
			$styleD = D("Style");
			if (!$styleD->create(False, 2)){
				// 如果创建失败 表示验证没有通过 输出错误提示信息
				$this->error($styleD->getError());
				exit();
			}else{
				$styles = I("style");
				if(empty($styles)){
					$this->error("设计风格不能为空！");
				}
				$this->_addStyles(I("id"), $styles);
				
				$styleD->save();
				$this->_addAttac(I("id"));
	
				$this->success("更新文档成功", __URL__.'/index');
	
			}
		}
	}
	
	
    
	/**
	 * 添加附件与文档的关系
	 */
	private function _addAttac($cid){
		$ids = I("mp_uploadImg_ids");
	
		$ids = explode(",", $ids);
		$attacRelM = M("attac_style");
	
		foreach($ids as $id){
			if(!empty($id)){
				$data = array();
				$data['att_id'] = $id;
				$data['sty_id'] = $cid;
				$attacRelM->add($data, array(), True);
			}
		}
	}

public function del(){
		$ids = I("ids");
		$ids = explode(",", $ids);
		$styleD = D("Style");
		
		
		foreach($ids as $id){
			if(!empty($id)){
				// 先查询是否有子文档，如果有则删除之
				$this->_delAttr($id);
				$designer = $styleD->find($id);
				
				$styleD->where("`id`='$id'")->delete();
			}
		}
		$this->ajaxReturn(1);
	}
	/**
	 * 删除指定的ContentId 的所有附件及其关联
	 * @param unknown_type $cid
	 */
	private function _delAttr($cid){
		$attac_relM = M("attac_style");
		$attac_rels = $attac_relM->where("`sty_id`='$cid'")->select();
		foreach($attac_rels as $ar){
			$this->_doDelAttr($cid, $ar['att_id']);
		}
	}
	
	/**
	 * 删除指定的Content Id和附件ID的附件及其关联
	 * @param unknown_type $cid
	 * @param unknown_type $attId
	 */
	private function _doDelAttr($cid, $attId){
		$attId = intval($attId);
		if(empty($attId)) $this->ajaxReturn("错误的图片");;
		
		$attacM = M("attac");
		$attac = $attacM->find($attId);
		delFile(__MP_SITE_ROOT__.$attac['path']);
		if(!empty($cid)) {
			M("attac_style")->where("`att_id`='$attId' and `sty_id`='$cid'")->delete();
		};
		
		$res = $attacM->where("`id`='$attId'")->delete();
		return $res;
		
	}
	
	public function delAttr(){
		$attId = I("id");
		$cid = I("cid");
		$res = $this->_doDelAttr($cid, $attId);
		if($res)
			$this->ajaxReturn($res);
		exit();
	}
    
	/**
	 * 获取JSON格式的附件列表
	 * @return number
	 */
	public function getAttacs(){
		$cid = I('id');
		if(empty($cid)) return 0;
		$arels = M("attac_style")->where("`sty_id`='$cid'")->select();
		
		$dataJsons = array();
		$attacM = M("attac");
		foreach($arels as $ar){
			$att_id = $ar['att_id'];
			$attac = $attacM->find($att_id);
			
			if(empty($attac)) {
				M("attac_style")->where("`sty_id`='$cid' and `att_id`='$att_id'")->delete();
				continue;
			}
			$dataJson = array();
			$dataJson['id'] = $attac['id'];
			$dataJson['path'] = __ROOT__.$attac['path'];
			$dataJson['name'] = $attac['title'];
			$dataJson['desc'] = brReplace($attac['description']);
			array_push($dataJsons, $dataJson);
		}
	
		$this->ajaxReturn(urldecode(json_encode($dataJsons))) ;
	}
	    
}