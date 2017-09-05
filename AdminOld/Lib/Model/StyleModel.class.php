<?php
/**
 * @用户模型
 */

class StyleModel extends Model{
	//自动验证
	protected $_validate = array(
        array('name','require','名称必须输入！'), //默认情况下用正则进行验证
        array('region','require','区域必须输入！'), //默认情况下用正则进行验证
		array('designer','require','设计师必须输入！'), //默认情况下用正则进行验证
		
		array('huxing','require','户型必须输入！', 0), //默认情况下用正则进行验证
		array('area','require','面积必须输入！', 0), //默认情况下用正则进行验证
		
		
        array('name','1,40','名称不可小于1个字符或大于40个字符！',0,'length'), //默认情况下用正则进行验证
		array('region','1,20','区域不可小于1个字符或大于20个字符！',0,'length'), //默认情况下用正则进行验证
		array('designer','1,20','设计师不可小于1个字符或大于20个字符！',0,'length'), //默认情况下用正则进行验证
		
		array('huxing','1,20','户型不可小于1个字符或大于20个字符！',0,'length'), //默认情况下用正则进行验证
		
		array('area','currency','面积必须是数字！',0), //默认情况下用正则进行验证
       
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