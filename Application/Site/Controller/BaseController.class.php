<?php
namespace Site\Controller;

use Think\Controller;
// 本类由系统自动生成，仅供测试用途
class BaseController extends Controller {
	
	public function _initialize(){
		$this->assignOptions();
		if(empty($this->_attac_relM)){
			$this->_attac_relM = M("attac_rel");
		}
		if(empty($this->_attacM)){
			$this->_attacM = M("attac");
		}

		$this->assign('loginInfo', $this->getLoginInfo());
	}
	
    private $_options = False;
    private $_attac_relM = False;
    private $_attacM = False;
    
    
    public function getOptions(){
        if($this->_options == False){
            $options = D('Options');
            $this->_options = $options->all();
            
            return $this->_options;
        }else{
            return $this->_options;
        }
        
    }

	public function getLoginInfo(){
		$authId = cookie(C('__YYG_SITE_AUTH_NAME__'));
		if(empty($authId)){
			return null;
		}
		return M("customer")->where(["id" => $authId])->find();
	}
    
    
    protected function assignOptions(){
    	$opt = $this->getOptions();
    	$sys = array(
    			"sitename"=>$opt->siteName,
    			"seoname" => $opt->seoName,
    			"copyright" => $opt->copyright
    	);
    	$this->assign("sys", $sys);
    }
    
    
    public function getContentAttach($cid){
    	$attac_rels = $this->_attac_relM->where("`rel_id`='$cid'")->select();
    	$opts = $this->getOptions();
    	$attacs = array();
    	foreach($attac_rels as $ar){
    		if(!empty($ar)){
    			$att_id = $ar['att_id'];
    			$attac = $this->_attacM->find($att_id);
    			if(!empty($attac)){
    				$attac['path'] = url($attac['path'], $opts->siteUrl);
    				array_push($attacs , $attac);
    			}
    			
    		}
    	}
    	
    	return $attacs;
    }

	public function jsonReturn($data, $errMsg="", $errcode=0){
		if(!empty($errMsg)){
			$errcode = -1;
		}
		$this->ajaxReturn([
			"data" => $data,
			"errMsg" => $errMsg,
			"errCode" => $errcode,
		]);
	}
    
	
}