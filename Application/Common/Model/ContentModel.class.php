<?php
/**
 * @用户模型
 */
namespace Common\Model;
use Think\Exception;
use Think\Model\RelationModel;
class ContentModel extends RelationModel{
	//自动验证
	protected $_validate = array(
        array('title','require','标题必须输入！'), //默认情况下用正则进行验证
		array('content','require','内容必须输入！'), //默认情况下用正则进行验证
		array('intro','require','摘要必须输入！'), //默认情况下用正则进行验证
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

	public function addTags($cid, $tags)
	{
		$tagsArr = explode(',', $tags);
		if($tagsArr){
			M("tags")->startTrans();
			M("tags")->delete([
				'cid' => $cid
			]);
			$tagSize = C("__YYG_TAG_SIZE__");
			try{
				foreach($tagsArr as $tagItem){
					if(empty($tagItem)){
						continue;
					}
					if(mb_strlen($tagItem) > $tagSize){
						M("tags")->rollback();
						throw new \Exception('标签不能超过'.$tagSize.'个字符');
					}
					$data = ['cid' => $cid, 'tag' => $tagItem];
					M("tags")->add($data, array(), True);
				}
			}catch (\Exception $e){
				M("tags")->rollback();
				throw  $e;
			}
			M("tags")->commit();
		}
		return true;
	}
}
?>