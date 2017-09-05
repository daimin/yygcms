<?php
/**
 * delete not use image and other attichment.
 * @author Administrator
 *
 */

namespace Admin\Controller;

class ClearCacheController extends BaseController {
    
    public function index(){
        //默认系统配置
        $this->clearCache();
	}
    
  
    /**
     * 清除系统缓存
     */
    public function clearCache(){
//         del_dir(TEMP_PATH);
//         del_dir(__MP_ADMIN_ROOT__."/Runtime/Temp/");
//         del_dir(__MP_SITE_DIR__."Runtime/Temp/");
        
   
//         del_dir(CACHE_PATH);
//         del_dir(__MP_SITE_DIR__."Runtime/Cache/");
//         del_dir(DATA_PATH.'_fields/');
//         del_dir(__MP_SITE_DIR__.'Runtime/Data/_fields/');
        del_dir(RUNTIME_PATH);
        //Log::write(__MP_SITE_ROOT__.'/Site/Runtime/');
        del_dir(__MP_SITE_ROOT__.'/Site/Runtime/');
       
        $this->__delUnRelPics();
          	
        $this->redirect("Index/top");
    }
    
    private function __delUnRelPics(){
    	$Model = new Model(); // 实例化一个model对象 没有对应任何数据表
    	//---------------------filter begin ---------------------------------------------
    	$dats = $Model->query("SELECT id,path FROM mp_attac WHERE id  NOT IN (SELECT att_id FROM mp_attac_rel)");
    	
    	$attacM = M("attac");
    	$relIds = array();
    	foreach($dats as $dat){
    		$relIds[$dat['id']] = $dat['path'];
    	}
    	
    	// 选择出所有的设计师关联附件图片
    	$dats = $Model->query("SELECT id,path FROM mp_attac WHERE id  IN (SELECT att_id FROM mp_attac_design)");
    	// 如果存在，就不删除
    	foreach($dats as $dat){
    		$id = $dat['id'];
    		// 如果在这里存在，就不会去删除
    		if(isset($relIds[$id])){
    			unset($relIds[$id]);
    		}
    	
    	}
    	
    	// 选择出所有的设计风格关联附件图片
    	$dats = $Model->query("SELECT id,path FROM mp_attac WHERE id  IN (SELECT att_id FROM mp_attac_style)");
    	// 如果存在，就不删除
    	foreach($dats as $dat){
    		$id = $dat['id'];
    		// 如果在这里存在，就不会去删除
    		if(isset($relIds[$id])){
    			unset($relIds[$id]);
    		} 
    	}
    	
    	// 删除家装追踪的所有的关联的附件图片
    	$dats = $Model->query("SELECT id,path FROM mp_attac WHERE id  IN (SELECT att_id FROM mp_homedeco_rel)");
    	// 如果存在，就不删除
    	foreach($dats as $dat){
    		$id = $dat['id'];
    		// 如果在这里存在，就不会去删除
    		if(isset($relIds[$id])){
    			unset($relIds[$id]);
    		}
    	}
    	//---------------------filter end ---------------------------------------------
    	// 删除图片文件及数据库中保存的路径
    	foreach($relIds as $id=>$path){
    		delFile(__MP_SITE_ROOT__.$path);
    		$attacM->where("`id`='".$id."'")->delete();
    	}
    }

}