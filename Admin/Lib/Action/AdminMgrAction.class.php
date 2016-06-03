<?php
// 本类由系统自动生成，仅供测试用途
class AdminMgrAction extends BaseAction {
    
    public function index(){
        //默认系统配置
        $users = D("Admins")->order("createtime desc")->select();
        $this->assign("users", $users);       
        $this->display("Admin:List");
	}
    
    public function add(){
       if($this->isGet()){
           $this->display("Admin:Add");
       }else if($this->isPost()){
           $adminD = D("Admins");
           if (!$adminD->create(False, 1)){
               // 如果创建失败 表示验证没有通过 输出错误提示信息
               $this->error($adminD->getError());
               exit();
          }else{
              $adminD->add();
              $this->success("添加管理员成功", __URL__);
          }

       }
    }
    
     public function changePassword($name=False){
         
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
              $this->success("更新管理员密码成功", __URL__);
          }

       }
    }
    
    public function del(){
        $names = I("names");
        
        if(empty($names)) {
            $this->ajaxReturn("选择要删除的管理员");
            exit();
        }
        $names = explode(",", $names);
        $adminD = D("Admins");
        $res = False;
        foreach($names as $name){
           $res = $adminD->where("`name`='$name'")->delete();
        }
        if($res)
            $this->ajaxReturn(1);
        else
            $this->ajaxReturn ('删除失败');
        exit();
    }
    
    public function changeStatus(){
    	$name = I('name');
    	$status = I('status');
    
    	D("Admins")->where("`name`='$name'")->save(array("status"=>$status));
    	$this->ajaxReturn (1);
    	exit();
    }
    
    public function changeRole(){
    	$name = I('name');
    	$role = I('role');
    	D("Admins")->where("`name`='$name'")->save(array("role"=>$role));
    	$this->ajaxReturn (1);
    	exit();
    }
    
  
    
    
    
   
}