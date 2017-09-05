<?php
/**
 * @配置模型
 */
namespace Admin\Model;
use Think\Model\RelationModel;
class OptionsModel extends RelationModel{
	//自动验证
	protected $_validate = array(
	);

	//自动完成
	protected $_auto = array(
		
	);

    public function all(){
        $datas = $this->select();
        $obj = new stdClass();
        
        foreach($datas as $data){
            if(empty($data) || empty($data['name'])) continue;
            $key = $data['name'];
            $obj->$key = $data['value'];
        }
        
        return $obj;
    }
    
    public function set($name, $value){
       $data = array();
       $data['name'] = $name;
       $data['value'] = $value;
       $this->data()->add($data, array(), True);
    }
    
}
?>