<?php
/**
 * @用户模型
 */

class ContentModel extends Model{
	//自动验证
	protected $_validate = array(
        array('title','require','标题必须输入！'), //默认情况下用正则进行验证
        array('content','require','内容必须输入！'), //默认情况下用正则进行验证
        array('title','1,200','标题不可小于1个字符或大于200个字符！',0,'length'), //默认情况下用正则进行验证
       
	);

	//自动完成
	protected $_auto = array(
         array('createtime','curDate',1,'callback'), // 对createtime字段在更新的时候写入当前时间戳
	     array('modifytime','curDate',3,'callback'), // 对modifytime字段在更新的时候写入当前时间戳
		 array('viewnum','incViewNum',2,'callback'), // 对viewnum字段在更新的时候写入当前时间戳
	);
    

	protected function incViewNum($num){
		return $num + 1;
	}
    
    public function curDate(){
        return date("Y-m-d H:i:s");
    }
    
    
    public function getAttatsCount($cid){
    	return M("attac_rel")->where("rel_id='$cid'")->count();
    }

   
    
}
?>