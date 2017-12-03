<?php

namespace Site\Service;

class CustomerService {

    public function loginCustomer($cstId, $remberPasswd=false){
        $customerEntity = M("Customer")->where(['id' => $cstId])->find();
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
    }
}