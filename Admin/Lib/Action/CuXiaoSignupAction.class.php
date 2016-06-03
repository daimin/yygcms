<?php
// 本类由系统自动生成，仅供测试用途
class CuXiaoSignupAction extends BaseAction {
    
    public function index($o_keyword = ''){
    	import('ORG.Util.Page');// 导入分页类
    	$signupM = M("signup");
    	if(empty($o_keyword)){
    		$o_keyword = I("o_keyword");
    	}
    	$map = array();
    	if(!empty($o_keyword)){
    		$map['name|created'] = array('like', '%'.$o_keyword.'%');
    	}
    	$opts = $this->getOptions();
    	$count      = $signupM->where($map)->count();// 查询满足要求的总记录数
    	$Page       = new Page($count, $opts->pageSize);// 实例化分页类 传入总记录数和每页显示的记录数
    	

    	
    	$Page->parameter   =   "&o_keyword=".$o_keyword;
    	
    	
    	$show       = $Page->show();// 分页显示输出
        $signups = $signupM->where($map)->order("created desc")->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign("signups", $signups);    
        $this->assign('page',$show);// 赋值分页输出
        $this->display();
	}
    
  
    public function del(){
        $ids = I("ids");
        
        if(empty($ids)) {
            $this->ajaxReturn("选择要删除的促销订单");
            exit();
        }
        $ids = explode(",", $ids);
        $signupM = M("signup");
        $res = False;
        foreach($ids as $id){
           $res = $signupM->where("`id`='$id'")->delete();
        }
        if($res)
            $this->ajaxReturn(1);
        else
            $this->ajaxReturn ('删除失败');
        exit();
    }
    
	public function changeStatus(){
		$cid = I("id");
		$status = I("status");
		if(empty($cid)) return;
		$signupM = M("signup");
		$data = array();
		$data['status'] = $status;
		$res = $signupM->where("`id`='$cid'")->save($data);
		$this->ajaxReturn($res);
	}
    
}