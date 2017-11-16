<?php
namespace Site\Controller;

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


        $customerEntity = M("customer")->where(["email" => $email])->find();
        if(empty($customerEntity)){
            $this->jsonReturn(false, "邮箱用户不存在");
        }

        if($customerEntity['password'] !== hashPassword($password, true)){
            $this->jsonReturn(false, "密码不正确");
        }

        $invalidTime = time() + intval(C('__YYG_INVALIDE_MINUTES__')) * 60;
        if($remberPasswd){
            $invalidTime = time() + intval(C('__YYG_INVALIDE_MINUTES__')) * 120 * 24 * 100;
        }

        $token = rand_string(16);
        M("customer")->where(['id' => $customerEntity['id']])->data(['lastlogintime' => date("Y-m-d H:i:s")])->save([]);

        $oldToken = M('logintoken')->where(['uid' => $customerEntity['id']])->find();
        if(!empty($oldToken)){
            M('logintoken')->where(['id' => $oldToken['id']])->data([
                'token' => $token,
                'invalidtime' => $invalidTime,
            ])->save();
        }else{
            $data = [
                'uid' => $customerEntity['id'],
                'token' => $token,
                'invalidtime' => $invalidTime,
            ];

            M('logintoken')->data($data)->add();
        }

        cookie(C("__YYG_SITE_AUTH_NAME__"), $token, 3600 * 24 * 365); // cookie设为一年
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