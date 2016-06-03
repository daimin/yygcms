<?php
// 本类由系统自动生成，仅供测试用途
class DecoTraceAction extends BaseAction {
    
	public function index(){
	    $logUser = session(C("__MP_DECO_NAME__"));
		if(empty($logUser)){

			$this->display();
		}else{
			$this->redirect("DecoTrace/tlist");
		}
	}
	
	public function dologin(){
		$name = remove_xss(I("username"));
		$password = remove_xss(I("password"));
		// 验证密码
		// find得到一个
		$homeDecoUsersM = M("homedeco_users");
		$user = $homeDecoUsersM->where("`name`='$name'")->find();
		if(empty($user)){
			$this->error('用户名或密码错误！');
		}else{
			if(hashPassword($password) == $user['password']){
				session(C("__MP_DECO_NAME__"), $user);
			}else{
				$this->error('密码错误！');
			}
		}
		$this->redirect("DecoTrace/tlist");
	}
	
	public function dologout(){
		$name = remove_xss(I("username"));
		session(C("__MP_DECO_NAME__"), null);
		$this->redirect("DecoTrace/index");
	}

	private function _getAttrs($hid){
		$data = array();
		$homedeco_relM = M('homedeco_rel');
		$attacM = M("attac");
		$rels = $homedeco_relM->where("hd_id=$hid")->select();
		foreach($rels as $rel){
			$attac = $attacM->find($rel['att_id']);
			array_push($data, $attac['path']);
		}
		
		return $data;
	}
	
	public function tlist(){
		$logUser = session(C("__MP_DECO_NAME__"));
		if(empty($logUser)){
			$this->redirect("DecoTrace/index");
		}else{
			// 取得附件列表
			import('ORG.Util.Page');// 导入分页类
			$homeDecoM = M("homedeco");
			
			$map['userid']  = array('eq', $logUser['id']);
			$count      = $homeDecoM->where($map)->count();// 查询满足要求的总记录数
			$Page       = new Page($count, 3);// 实例化分页类 传入总记录数和每页显示的记录数
			
			
			$homedecos = $homeDecoM->where($map)->order("`date` desc")->limit($Page->firstRow.','.$Page->listRows)->select();
			$datas = array();
			foreach($homedecos as $hd){				
				$datas[$hd['date']] = $this->_getAttrs($hd['id']);
			}
			$this->assign("logUser", $logUser);
			$show       = $Page->show();// 分页显示输出
			$this->assign('page',$show);// 赋值分页输出
			$this->assign("datas", $datas);
			$this->display();
		}
		
	}
	
	public function tdetail($date){
		$logUser = session(C("__MP_DECO_NAME__"));
		if(empty($logUser) || empty($date)){
			$this->redirect("DecoTrace/index");
		}else{
			$homeDecoM = M("homedeco");
			$map['userid']  = array('eq', $logUser['id']);
			$map['date']  = array('eq', $date);
			$homedeco = $homeDecoM->where($map)->find();
			$data = $this->_getAttrs($homedeco['id']);
			$this->assign("logUser", $logUser);
			$this->assign("date", $date);
			$this->assign("data", $data);
			$this->display();
		}
	}
	
	public function retrieve(){
		$opt = $this->getOptions();
		$this->assign("opt", $opt);
		$this->display();
	}
	
}