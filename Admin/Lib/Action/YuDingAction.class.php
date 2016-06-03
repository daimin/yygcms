<?php
// 本类由系统自动生成，仅供测试用途
class YuDingAction extends BaseAction {
	
    private function _huxingSearch(&$map, $ssk){
        foreach($ssk as $sk){
            $t = substr($sk, -1, 1);
            $v = substr($sk, 0, 1);
          
            if($t == 's'){
                $map['shi'] =  array("eq", $v);
            }else if($t == 't'){
                $map['ting'] =  array("eq", $v);
            }else if($t == 'w'){
                $map['wei'] =  array("eq", $v);
            }
            
        }
        
    }
    
    public function index($o_keyword = '', $sort=''){
    	import('ORG.Util.Page');// 导入分页类
    	$yuDingM = M("yuding");
    	if(empty($o_keyword)){
    		$o_keyword = I("o_keyword");
    	}
    	$map = array();
    	if(!empty($o_keyword)){
            $ss = str_replace(array("室","厅","卫"), array('s,','t,','w,'), $o_keyword);
            $ssk = explode(',',$ss);
           
            if(count($ssk) > 1){
               $this->_huxingSearch($map, $ssk);
                
            }else{
                $map['name|created|city|xiaoqu|phone|style|sex|yusuan'] = array('like', '%'.$o_keyword.'%');
            }
    		
    	}
    	$opts = $this->getOptions();
    	$count      = $yuDingM->where($map)->count();// 查询满足要求的总记录数
    	$Page       = new Page($count, $opts->pageSize);// 实例化分页类 传入总记录数和每页显示的记录数
    		
    	
    		
    	$Page->parameter   =   "&o_keyword=".$o_keyword.'&sort='.$sort;;
    		
    	$show       = $Page->show();// 分页显示输出
    	$yudings = $yuDingM->where($map)->order("created $sort")->limit($Page->firstRow.','.$Page->listRows)->select();
        $yudingArr = array();
        foreach($yudings as $yd){
            $yd['huxing'] = $yd['shi']."室".$yd['ting'].'厅'.$yd['wei'].'卫';
            array_push($yudingArr, $yd);
        }
    	$this->assign("yudings", $yudingArr);
    	$this->assign('sort', $sort);
    	$this->assign('page',$show);// 赋值分页输出
    	$this->display();
	}
	

	private function _getStyle($sid, $asStr = True){
		$styleRelM = M("style_rel");
		$styleCfg = C('Design_Styles');
		$styles = $styleRelM->where("`sid`=$sid")->select();
		
		$ss = array();
		foreach($styles as $s){
			array_push($ss, $styleCfg[$s['style']]);
		}
		//print_r($ss);
		if($asStr){
			return implode(",", $ss);
		}
		
		return $ss;
	}
    
   public function del(){
		$ids = I("ids");
		$ids = explode(",", $ids);
		$yuDingM = M("yuding");
		
		
		foreach($ids as $id){
			if(!empty($id)){
				// 先查询是否有子文档，如果有则删除之
				$yuDingM->where("`id`='$id'")->delete();
			}
		}
		$this->ajaxReturn(1);
	}
	
	    
}