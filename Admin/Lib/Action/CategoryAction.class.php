<?php
// 本类由系统自动生成，仅供测试用途
class CategoryAction extends BaseAction {
    
    public function index(){
        //默认系统配置
//        $users = M("category")->order("createtime desc")->select();
//        $this->assign("users", $users);
        echo "no index page";
	}
    
    public function mgr(){
        $this->display();
    }

    public function getList(){
        $returnData = [];
        $parentCategorys = M("category")->where("pid=0")->select();
        foreach($parentCategorys as $parentCategory){
            $childNodes = M("category")->where("pid=".$parentCategory['id'])->select();

            $pNode = [
                'nodes' => [],
            ];

            foreach($childNodes as $childNode){
                $enabledStr = '<a href="javascript:void(0)" onclick="doDisabled(\''.$childNode['id'].'\')">禁用</a>';
                if($childNode['status'] == 0){
                    $enabledStr = '<a href="javascript:void(0)" onclick="doEnabled(\''.$childNode['id'].'\')">启用</a>';
                }
                $pNode['nodes'] []= [
                    'text' => $childNode['name'].'<div class="category-del-li-div"><a onclick="doDel(\''.$childNode['id'].'\')">删除</a>'.$enabledStr.'</div>',
                ];
            }

            $enabledStr = "";
            $delStr = "";
            if(empty($pNode['nodes'])){
                $enabledStr = '<a href="javascript:void(0)" onclick="doDisabled(\''.$parentCategory['id'].'\')">禁用</a>';
                if($parentCategory['status'] == 0){
                    $enabledStr = '<a href="javascript:void(0)" onclick="doEnabled(\''.$parentCategory['id'].'\')">启用</a>';
                }
                $delStr = '<a href="javascript:void(0)" onclick="doDel(\''.$parentCategory['id'].'\')">删除</a>';
            }
            $pNode['text'] = $parentCategory['name'].'<div class="category-del-li-div">'.$delStr.$enabledStr.'</div>';

            $returnData []= $pNode;
        }
        $this->jsonReturn ($returnData);
    }

    public function getCategorys(){
        $pid = I("get.pid");
        $categorys = M("category")->where("pid=".$pid." and `status`='1'")->field("id, name")->select();
        $this->jsonReturn ($categorys);
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