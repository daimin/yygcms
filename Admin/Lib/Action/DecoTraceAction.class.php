<?php
// 本类由系统自动生成，仅供测试用途
class DecoTraceAction extends BaseAction {
	
    public function index($o_keyword = '', $sort='asc'){
    	import('ORG.Util.Page');// 导入分页类
    	$homedecoUsersM = M("homedeco_users");
    	if(empty($o_keyword)){
    		$o_keyword = I("o_keyword");
    	}
    	$map = array();
    	if(!empty($o_keyword)){
    		$map['name|createtime'] = array('like', '%'.$o_keyword.'%');
    	}
    	
    	if(empty($sort)){
    		$sort = I('sort');
    	}
    	
    	$opts = $this->getOptions();
    	$count      = $homedecoUsersM->where($map)->count();// 查询满足要求的总记录数
    	$Page       = new Page($count, $opts->pageSize);// 实例化分页类 传入总记录数和每页显示的记录数
    		
    	
    		
    	$Page->parameter   =   "&o_keyword=".$o_keyword;
    		
    	$show       = $Page->show();// 分页显示输出
    	$traceUsers = $homedecoUsersM->where($map)->order("createtime $sort")->limit($Page->firstRow.','.$Page->listRows)->select();
    	$this->assign('traceUsers', $traceUsers);
    	$this->assign('page',$show);// 赋值分页输出
    	$this->assign('sort', $sort);
    	$this->display();
	}
	
	public function add(){
		if($this->isGet()){
			$this->display();
		}else{
			$homedecoUsersM = M("homedeco_users");
		    $name = I("name");
			if(empty($name)){
			   $this->error("家装用户名不能为空！");		
			}
			//--------------------------------
			$password = I("password");
			if(empty($password)){
				$this->error("密码不能为空！");
			}
			
			$data['name'] = $name;
			$data['password'] = hashPassword($password);
			$data['createtime'] = date("Y-m-d H:i:s");
			$data['status'] = 1;
			if($homedecoUsersM->add($data)){
				$this->success("添加家装用户成功", __URL__.'/index');
			}else{
				$this->error("添加失败！");
			}
		}
	}
	
	public function edit($cid=False){
		if($this->isGet()){
			$homedecoUsersM = M("homedeco_users");
			$homedecoUser = $homedecoUsersM->find($cid);
			$this->assign("homedecoUser", $homedecoUser);
			$opts = $this->getOptions();
			$this->display();
				
		}else{
		    $homedecoUsersM = M("homedeco_users");
		    $name = I("name");
			if(empty($name)){
			   $this->error("家装用户名不能为空！");		
			}
			//--------------------------------
			$password = I("password");
			if(empty($password)){
				$this->error("新密码不能为空！");
			}
			
			$repassword = I("repassword");
			if(empty($repassword)){
				$this->error("确认新密码不能为空！");
			}
			
			if($password != $repassword){
				$this->error("确认密码不正确！");
			}
			
			$data['name'] = $name;
			$data['password'] = md5($password);
			$did = I("id");
			
			if($homedecoUsersM->where("`id`=$did")->save($data)){
				$this->success("修改家装用户密码成功", __URL__.'/index');
			}else{
				$this->error("修改失败！");
			}
		}
	}
	
    public function del(){
		$ids = I("ids");
		$ids = explode(",", $ids);
		$homedecoUsersM = M("homedeco_users");
		$homedecoM = M("homedeco");
		
		foreach($ids as $id){
			if(!empty($id)){
				// 先查询是否有子文档，如果有则删除之
				$homedecoUser = $homedecoUsersM->find($id);
				if(!empty($homedecoUser)){
					
					$homedecos = $homedecoM->where("userid='".$homedecoUser['id']."'")->select();
					foreach($homedecos as $hd){
						$this->_delAttr($hd['id']);
					}
					$homedecoM->where("userid='".$homedecoUser['id']."'")->delete();
				    $homedecoUsersM->delete($id);
				}
				
			}
		}
		$this->ajaxReturn(1);
	}
	
	/**
	 * 删除指定的ContentId 的所有附件及其关联
	 * @param unknown_type $cid
	 */
	private function _delAttr($hid){
		$homedeco_relM = M("homedeco_rel");
		$homedeco_rels = $homedeco_relM->where("`hd_id`='$hid'")->select();
		foreach($homedeco_rels as $ar){
			$this->_doDelAttr($hid, $ar['att_id']);
		}
	}
	
	/**
	 * 删除指定的Content Id和附件ID的附件及其关联
	 * @param unknown_type $hid
	 * @param unknown_type $attId
	 */
	private function _doDelAttr($hid, $attId){
		$attId = intval($attId);
		if(empty($attId)) $this->ajaxReturn("错误的图片");;
	
		$attacM = M("attac");
		$attac = $attacM->find($attId);
		delFile(__MP_SITE_ROOT__.$attac['path']);
		if(!empty($hid)) {
			M("homedeco_rel")->where("`att_id`='$attId' and `hd_id`='$hid'")->delete();
		};
	
		$res = $attacM->where("`id`='$attId'")->delete();
		return $res;
	
	}
	
	public function changeStatus(){
		$cid = I("id");
		$status = I("status");
		if(empty($cid)) return;
		$homedecoUsersM = M("homedeco_users");
		$data = array();
		$data['status'] = $status;
		$res = $homedecoUsersM->where("`id`='$cid'")->save($data);
		$this->ajaxReturn($res);
	}
	
	public function homeDecoList($uid, $o_keyword = '', $sort='asc'){
		import('ORG.Util.Page');// 导入分页类
		$homedecoM = M("homedeco");
		$homedecoUsersM = M("homedeco_users");
		if(empty($o_keyword)){
			$o_keyword = I("o_keyword");
		}
		$map = array();
		if(!empty($o_keyword)){
			$map['date'] = array('like', '%'.$o_keyword.'%');
		}
		 
		if(empty($sort)){
			$sort = I('sort');
		}
		if(empty($uid)){
			$uid = I('uid');
		}
		
		$map['userid'] = $uid;
		
		$opts = $this->getOptions();
		$count      = $homedecoM->where($map)->count();// 查询满足要求的总记录数
		$Page       = new Page($count, $opts->pageSize);// 实例化分页类 传入总记录数和每页显示的记录数
		
		 
		
		$Page->parameter   =   "&o_keyword=".$o_keyword;
		
		$show       = $Page->show();// 分页显示输出
		$homeDecos = $homedecoM->where($map)->order("date $sort")->limit($Page->firstRow.','.$Page->listRows)->select();
		for($i = 0, $len = count($homeDecos); $i < $len; $i++){
			$homeDecos[$i]['attac_count'] = $this->getAttatsCount($homeDecos[$i]['id']);
		}
		
		$homeUser = $homedecoUsersM->find($uid);
		$this->assign('homeDecos', $homeDecos);
		$this->assign('homeUser', $homeUser);
		$this->assign('page',$show);// 赋值分页输出
		$this->assign('sort', $sort);
		$this->display();
	}
	
	/**
	 * 获得家装的附件的个数
	 * @param unknown_type $cid
	 */
	public function getAttatsCount($cid){
		return M("homedeco_rel")->where("hd_id='$cid'")->count();
	}
	
	public function addHomeDeco($uid=false){
		$homedecoUsersM = M("homedeco_users");
		$homedecoM = M("homedeco");
		if($this->isGet()){
			$homeUser = $homedecoUsersM->find($uid);
			$this->assign('homeUser', $homeUser);
			$this->display();
		}else{
			$userid = I('userid');
			$uploadDate = I('date');
			//检查一下，指定的用户的指定日期的记录是否已经添加
			$hd = $homedecoM->where("`date`='$uploadDate' and userid='$userid'")->find();
			if(!empty($hd)){
				$this->error("指定的家装记录已添加！", __URL__.'/homeDecoList/uid/'.$userid);
			}else{
				$data['userid'] = $userid;
				$data['date'] = $uploadDate;
				$data['caption'] = I("caption");
				$hid = $homedecoM->add($data);
				$this->_addAttac($hid);
				//Log::write("sublist ".$pid);
				if(!empty($hid)){
				
					$this->success("添加家装成功", __URL__.'/homeDecoList/uid/'.$userid);
				}else{
					$this->error("添加家装失败！");
				}
			}

			
		}
		
	}
	
	public function editHomeDeco($hid=False){
		$homedecoUsersM = M("homedeco_users");
		$homedecoM = M("homedeco");
		if($this->isGet()){
			$homedeco = $homedecoM->find($hid);
			$homeUser = $homedecoUsersM->find($homedeco['userid']);
			$this->assign('homeUser', $homeUser);
			$this->assign('homedeco', $homedeco);
			$this->display();
		}else{
			$userid = I('userid');
			$uploadDate = I('date');
		    $data['userid'] = $userid;
			$data['date'] = $uploadDate;
			
			if(empty($hid)){
				$hid = I('hid');
			}
			$data['caption'] = I("caption");
			$res = $homedecoM->where("`id`=$hid")->save($data);
			$this->_addAttac($hid);
			//Log::write("sublist ".$pid);
			if(!empty($res)){
	
				$this->success("修改家装成功", __URL__.'/homeDecoList/uid/'.$userid);
 			}else{
 				//$this->error("修改家装失败！");
 				$this->redirect('/DecoTrace/homeDecoList/uid/'.$userid);
 			}
 			//$this->success("修改家装成功", __URL__.'/homeDecoList/uid/'.$userid);
		    
				
		}
	}
	/**
	 * delete home deco 
	 */
	public function delHomeDeco(){
		$ids = I("ids");
		$ids = explode(",", $ids);
		$homedecoM = M("homedeco");
	
		foreach($ids as $id){
			if(!empty($id)){
				// 先查询是否有子文档，如果有则删除之
				$homedeco = $homedecoM->find($id);
				if(!empty($homedeco)){
					$homedecoM->delete($id);
					$this->_delAttr($id);
				}
	
			}
		}
		$this->ajaxReturn(1);
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
	 * 添加附件与文档的关系
	 */
	private function _addAttac($cid){
		$ids = I("mp_uploadImg_ids");
	
		$ids = explode(",", $ids);
		$homeDecoRelM = M("homedeco_rel");
	
		foreach($ids as $id){
			if(!empty($id)){
				$data = array();
				$data['att_id'] = $id;
				$data['hd_id'] = $cid;
				$homeDecoRelM->add($data, array(), True);
			}
		}
	}
	
	/**
	 * 获取JSON格式的附件列表
	 * @return number
	 */
	public function getAttacs(){
		$cid = I('id');
		if(empty($cid)) return 0;
		$arels = M("homedeco_rel")->where("`hd_id`='$cid'")->select();
	
		$dataJsons = array();
		$attacM = M("attac");
		foreach($arels as $ar){
			$att_id = $ar['att_id'];
			$attac = $attacM->find($att_id);
			if(empty($attac)) {
				M("homedeco_rel")->where("`hd_id`='$cid' and `att_id`='$att_id'")->delete();
	
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