<?php

namespace Admin\Controller;

// 本类由系统自动生成，仅供测试用途
class IndexMgrController extends BaseController {
    
    public function index(){
        //默认系统配置
        $this->display();
	}
    
     public function changePassword($name=False,$topLink=False){
         
       if($this->isGet()){
           $admin = D("Admins")->where("`name`='$name'")->find();
           if(!empty($admin)){
               $this->assign('admin', $admin);
               $this->display("Admin:ChangePwd");
           }else{
               $this->error("无效的用户名");
           }
           
       }else if($this->isPost()){
           $adminD = D("Admins");
           if (!$adminD->create(False, 2)){
               // 如果创建失败 表示验证没有通过 输出错误提示信息
               $this->error($adminD->getError());
               exit();
          }else{
              //更新用
              $adminD->save();
              $this->success("更新管理员密码成功");
              
          }

       }
    }
    
   
}