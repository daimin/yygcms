<?php
namespace Admin\Controller;

// 本类由系统自动生成，仅供测试用途
class CustomerController extends BaseController {
    
    public function mgr(){
        //默认系统配置
        $customers = M("Customer")->order("createtime desc")->select();
        $this->assign("customers", $customers);
        $this->display();
	}
    
    
     public function changePassword(){
         $customerId = I('post.customerId');
         $newpassword = I('post.newpassword');

         $customerM = M("Customer");

         if(empty($newpassword)){
             $this->jsonReturn(false, '新密码不能为空');
         }

         if(mb_strlen($newpassword) < 6){
             $this->jsonReturn(false, '新密码不能小于6个字符');
         }

         if(mb_strlen($newpassword) > 30){
             $this->jsonReturn(false, '新密码不能大于30个字符');
         }

         $customerEntity = $customerM->where(['id' => $customerId])->find();
         if(empty($customerEntity)){
             $this->jsonReturn(false, '找不到指定的用户');
         }

         $customerM->where(['id' => $customerId])->save(['password' => hashPassword($newpassword, true)]);
         $this->jsonReturn(1);
    }

    
    public function changeStatus(){
        $id = I('post.id');
    	$status = I('post.status');
    
    	M("Customer")->where("`id`='$id'")->save(array("status"=>intval($status)));
    	$this->ajaxReturn (1);
    	exit();
    }

    
   
}