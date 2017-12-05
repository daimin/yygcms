<?php
namespace Site\Controller;

use Site\Service\CustomerService;

class LoginController extends BaseController {

    public function login(){
        $email = I("post.email");
        $password = I("post.password");
        $remberPasswd = boolval(I("post.remberPasswd"));

        $email = remove_xss($email);
        $password = remove_xss($password);

        if(empty($email)){
            $this->jsonReturn(false, "请输入您注册的邮箱地址");
        }

        if(empty($password)){
            $this->jsonReturn(false, "请输入您的登录密码");
        }


        $customerEntity = M("customer")->where(["email" => ':email'])->bind(':email', $email)->find();
        if(empty($customerEntity)){
            $this->jsonReturn(false, "邮箱用户不存在");
        }

        if($customerEntity['password'] !== hashPassword($password, true)){
            $this->jsonReturn(false, "密码不正确");
        }
        /** @var  $customerService CustomerService */
        $customerService = D("Customer", "Service");
        $customerService->loginCustomer($customerEntity['id'], $remberPasswd);
        $this->jsonReturn(1);
    }

    public function logout($p=''){
        cookie(C("__YYG_SITE_AUTH_NAME__"), null, time()-1);
        $durl = str_replace('/index.php/', '/', strtolower(base64_decode($p)));
        $durl = str_replace('.html', '', $durl);
        $this->redirect($durl);
    }

    public function setting(){
        $this->display();
    }
    
}