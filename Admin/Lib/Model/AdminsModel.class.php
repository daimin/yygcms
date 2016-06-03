<?php
/**
 * @用户模型
 */

class AdminsModel extends Model{
	//自动验证
	protected $_validate = array(
        array('name','require','帐号名称必须输入！'), //默认情况下用正则进行验证
        array('oldpassword','require','旧密码必须输入！', '', 2), //默认情况下用正则进行验证
        array('password','require','密码必须输入！'), //默认情况下用正则进行验证
        array('repassword','require','重复密码必须输入！'), //默认情况下用正则进行验证
        
        
        array('password','6,32','密码不可小于6个字符或大于32个字符！',0,'length'), //默认情况下用正则进行验证
        array('name','checkNameUnique','帐号名称已经存在！',0,'callback',1), // 在新增的时候验证name字段是否唯一
        array('repassword','password','确认密码不正确',0,'confirm', 1), // 验证确认密码是否和密码一致
        array('oldpassword','checkOldPassword','旧密码不正确',0,'callback',2), //默认情况下用正则进行验证
       
	);

	//自动完成
	protected $_auto = array(
		 array('password','hashPassword',3,'function') , // 对password字段在新增的时候使md5函数处理
         array('createtime','curDate',1,'callback'), // 对createtime字段在更新的时候写入当前时间戳
	);
    

    
    public function curDate(){
        return date("Y-m-d H:i:s");
    }
    
    protected function checkNameUnique($name){
       
       $c = $this->where("`name`='$name'")->count("name");
      
       if($c > 0){
           return False;
       }
       return True;
    }
    
    protected  function checkOldPassword($oldPass){
        $oldPass = hashPassword($oldPass);
        $c = $this->where("`password`='$oldPass'")->count();
        if($c > 1){
           return True;
       }
       return False;
    }

   
    
}
?>