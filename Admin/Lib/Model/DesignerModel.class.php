<?php
/**
 * @用户模型
 */

class DesignerModel extends Model{
	//自动验证
	protected $_validate = array(
        array('name','require','姓名必须输入！'), //默认情况下用正则进行验证
        array('title','require','职位必须输入！'), //默认情况下用正则进行验证
		array('rank','require','职称必须输入！'), //默认情况下用正则进行验证
		
		array('degree','require','学历必须输入！', 0), //默认情况下用正则进行验证
		array('school','require','毕业院校必须输入！', 0), //默认情况下用正则进行验证
		array('worktime','require','从业时间必须输入！', 0), //默认情况下用正则进行验证
		
		array('photo','require','照片必须上传！', 0), //默认情况下用正则进行验证
        
        
        array('name','1,20','姓名不可小于1个字符或大于20个字符！',0,'length'), //默认情况下用正则进行验证
		array('title','1,20','职位不可小于1个字符或大于20个字符！',0,'length'), //默认情况下用正则进行验证
		array('rank','1,20','职称不可小于1个字符或大于20个字符！',0,'length'), //默认情况下用正则进行验证
		
		array('degree','1,20','学历不可小于1个字符或大于20个字符！',0,'length'), //默认情况下用正则进行验证
		array('school','1,40','毕业院校不可小于1个字符或大于40个字符！',0,'length'), //默认情况下用正则进行验证
		array('worktime','currency','从业时间必须是数字！',0), //默认情况下用正则进行验证
       
	);

	//自动完成
	protected $_auto = array(
         array('createtime','curDate',1,'callback'), // 对createtime字段在更新的时候写入当前时间戳
	);
    

    public function curDate(){
        return date("Y-m-d H:i:s");
    }
    
    
    public function getAttatsCount($cid){
    	return M("attac_rel")->where("rel_id='$cid'")->count();
    }

   
    
}
?>