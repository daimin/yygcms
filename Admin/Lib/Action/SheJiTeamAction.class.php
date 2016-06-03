<?php
// 本类由系统自动生成，仅供测试用途
class SheJiTeamAction extends BaseAction {
	
    public function index($o_keyword = '', $sort=''){
    	import('ORG.Util.Page');// 导入分页类
    	$designeD = D("Designer");
    	if(empty($o_keyword)){
    		$o_keyword = I("o_keyword");
    	}
    	$map = array();
    	if(!empty($o_keyword)){
    		$map['name|createtime'] = array('like', '%'.$o_keyword.'%');
    	}
    	$opts = $this->getOptions();
    	$count      = $designeD->where($map)->count();// 查询满足要求的总记录数
    	$Page       = new Page($count, $opts->pageSize);// 实例化分页类 传入总记录数和每页显示的记录数
    		
    	if(empty($sort)){
    		$sort = I('sort');
    		if(empty($sort)){
    			$sort = 'desc';
    		}
    	}
    		
    	$Page->parameter   =   "&o_keyword=".$o_keyword.'&sort='.$sort;
    		
    		
    	$show       = $Page->show();// 分页显示输出
    	$designers = $designeD->where($map)->order("createtime $sort")->limit($Page->firstRow.','.$Page->listRows)->select();
    	$designersN = array();
    	foreach($designers as $des){
    		
    		$des['photo'] = url($des['photo'], $opts->siteUrl);
    		array_push($designersN, $des);
    	}
    	$this->assign("designers", $designersN);
    	$this->assign("groups", C('Design_Groups'));
    	$this->assign('sort', $sort);
    	$this->assign('page',$show);// 赋值分页输出
    	$this->display();
	}
	
	public function yudinglist($o_keyword = ''){
		import('ORG.Util.Page');// 导入分页类
		$designer_yudingpM = M("designer_yuding");
		if(empty($o_keyword)){
			$o_keyword = I("o_keyword");
		}
		$map = array();
		if(!empty($o_keyword)){
			$map['name|created'] = array('like', '%'.$o_keyword.'%');
		}
		$opts = $this->getOptions();
		$count      = $designer_yudingpM->where($map)->count();// 查询满足要求的总记录数
		$Page       = new Page($count, $opts->pageSize);// 实例化分页类 传入总记录数和每页显示的记录数
		 
	
		 
		$Page->parameter   =   "&o_keyword=".$o_keyword;
		 
		 
		$show       = $Page->show();// 分页显示输出
		$yudings = $designer_yudingpM->where($map)->order("created desc")->limit($Page->firstRow.','.$Page->listRows)->select();
		$this->assign("yudings", $yudings);
		$this->assign('page',$show);// 赋值分页输出
		$this->display();
	}
	
	
	public function delYuding(){
		$ids = I("ids");
		$ids = explode(",", $ids);
		$designer_yudingpM = M("designer_yuding");
		
		
		foreach($ids as $id){
			if(!empty($id)){
				$designer_yudingpM->where("`id`='$id'")->delete();
			}
		}
		$this->ajaxReturn(1);
	}
	
	
	public function add(){
		if($this->isGet()){
			$this->assign("groups", C('Design_Groups'));
			$this->display();
		}else{
			$designeD = D("Designer");
			if (!$designeD->create(False, 1)){
				// 如果创建失败 表示验证没有通过 输出错误提示信息
				$this->error($designeD->getError());
				exit();
			}else{
				if(!$photo = $this->_uploadPhoto()){
					$this->error("照片没有上传或照片上传失败");
					exit();
				}
				$designeD->photo = $photo;
				$cid = $designeD->add();
				$this->_addAttac($cid);
				//Log::write("sublist ".$pid);
				$this->success("添加文档成功", __URL__.'/index');
			
			}
		}
	}
	
	public function edit($cid=False){
		if($this->isGet()){
			$designerD = D("Designer");
			$designer = $designerD->find($cid);
			$this->assign("groups", C('Design_Groups'));
			$this->assign("designer", $designer);
			$opts = $this->getOptions();
			$this->display();
				
		}else{
			$designerD = D("Designer");
			if (!$designerD->create(False, 2)){
				// 如果创建失败 表示验证没有通过 输出错误提示信息
				$this->error($designerD->getError());
				exit();
			}else{
				if($photo = $this->_uploadPhoto()){
					$designer = $designerD->find(I("id"));
					delFile(__MP_SITE_ROOT__.$designer['photo']);
					$designerD->photo = $photo;
				}
				
				$designerD->save();
				$this->_addAttac(I("id"));
	
				$this->success("更新文档成功", __URL__.'/index');
	
			}
		}
	}
	
	private function _uploadPhoto(){
	
		if (! empty ( $_FILES )) {
			
			$tempFile = $_FILES ['photo'] ['tmp_name'];
		    $fname = $_FILES ['photo'] ['name'];
			
			$fext = substr ( $fname, strrpos ( $fname, "." ) + 1);
	
			if(empty($fext)) {
				//echo '无效的文件类型';
				return False;
			}
			if(!$this->checkExtLimit($fext)){
				//echo '无效的文件类型';
				return False;
			}
			
			$sfdir = C("__MP_UPLOAD_DIR__").'/'.date("Ymd");
			$fdir = __MP_SITE_ROOT__.$sfdir;
			if(!file_exists($fdir))
				createdir($fdir);
				
			$fnew_name = md5(time().$fname) . '.' .$fext;
			$targetFile = $fdir . '/'.$fnew_name;
				
			if(move_uploaded_file ( $tempFile, $targetFile )){
				return $sfdir.'/'.$fnew_name;
			}
			
			return False;
		}

	}
    
	/**
	 * 添加附件与文档的关系
	 */
	private function _addAttac($cid){
		$ids = I("mp_uploadImg_ids");
	
		$ids = explode(",", $ids);
		$attacDesM = M("attac_design");
	
		foreach($ids as $id){
			if(!empty($id)){
				$data = array();
				$data['att_id'] = $id;
				$data['des_id'] = $cid;
				$attacDesM->add($data, array(), True);
			}
		}
	}

public function del(){
		$ids = I("ids");
		$ids = explode(",", $ids);
		$designerD = D("Designer");
		
		
		foreach($ids as $id){
			if(!empty($id)){
				// 先查询是否有子文档，如果有则删除之
				$this->_delAttr($id);
				$designer = $designerD->find($id);
				if(!empty($designer)){
					//Log::write(__MP_SITE_ROOT__.$designer['photo']);
					delFile(__MP_SITE_ROOT__.$designer['photo']);
				}
				
				$designerD->where("`id`='$id'")->delete();
			}
		}
		$this->ajaxReturn(1);
	}
	/**
	 * 删除指定的ContentId 的所有附件及其关联
	 * @param unknown_type $cid
	 */
	private function _delAttr($cid){
		$attac_relM = M("attac_design");
		$attac_rels = $attac_relM->where("`des_id`='$cid'")->select();
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
			M("attac_design")->where("`att_id`='$attId' and `des_id`='$cid'")->delete();
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
		$arels = M("attac_design")->where("`des_id`='$cid'")->select();
		
		$dataJsons = array();
		$attacM = M("attac");
		foreach($arels as $ar){
			$att_id = $ar['att_id'];
			$attac = $attacM->find($att_id);
			
			if(empty($attac)) {
				M("attac_design")->where("`des_id`='$cid' and `att_id`='$att_id'")->delete();
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