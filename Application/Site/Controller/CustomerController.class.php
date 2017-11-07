<?php
namespace Site\Controller;

class CustomerController extends BaseController {

    public function setting(){
        $this->checkAuthStatus();
        $loginCst = $this->getLoginInfo();
        $this->assign('loginCst', $loginCst);
        $this->display();
    }

    public function changePassword(){
        $this->checkAuthStatus();
        $passwordCurrent = trim(I("post.password_current"));
        $passwordNew = trim(I("post.password_new"));
        $passwordAgain = trim(I("post.password_again"));

        if(empty($passwordCurrent)){
            $this->jsonReturn (false, '当前密码不能为空');
        }

        if(empty($passwordNew)){
            $this->jsonReturn (false, '新密码不能为空');
        }

        if(empty($passwordAgain)){
            $this->jsonReturn (false, '再次输入新密码不能为空');
        }

        if(strlen($passwordNew) < 6){
            $this->jsonReturn (false, '新密码不能小于6个字符');
        }

        if($passwordNew != $passwordAgain){
            $this->jsonReturn (false, '再次输入新密码不正确');
        }

        $loginCst = $this->getLoginInfo();
        if($loginCst['password'] != hashPassword($passwordCurrent, true)){
            $this->jsonReturn (false, '当前密码不正确');
        }

        M('Customer')->where(['id' => $loginCst['id']])->data(['password' => hashPassword($passwordNew, true)])->save();

        $this->jsonReturn (true);
    }
    
}