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
		$this->flushTokenInvalidTime();
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
		$token = cookie(C('__YYG_SITE_AUTH_NAME__'));
		if(empty($token)){
			return null;
		}
		$loginToken = M('logintoken')->where(['token' => $token])->find();
		if(empty($loginToken)){
			return null;
		}
		if($loginToken['invalidtime'] < time()){
			return null;
		}
		$customer = M("customer")->where(["id" => $loginToken['uid']])->find();

		if(empty($customer)){
			return null;
		}
		if(!empty($customer['avatar'])){
			$headImgs =  [
				'big' => $this->getAvatarurl($customer['avatar'], 'big'),
				'middle' => $this->getAvatarurl($customer['avatar'], 'middle'),
				'small' => $this->getAvatarurl($customer['avatar'], 'small'),
			];
		}else{
			$headImgs = [
				'big' => C('__YYG_UPLOAD_DIR__').'/avatars/default/big_headpic.jpg?t='.time(),
				'middle' => C('__YYG_UPLOAD_DIR__').'/avatars/default/middle_headpic.jpg?t='.time(),
				'small' => C('__YYG_UPLOAD_DIR__').'/avatars/default/small_headpic.jpg?t='.time(),
			];
		}
		$customer['headimgs'] = $headImgs;
		return $customer;
	}

	public function flushTokenInvalidTime(){
		$token = cookie(C('__YYG_SITE_AUTH_NAME__'));
		if(empty($token)){
			return;
		}
		$loginToken = M('logintoken')->where(['token' => $token])->find();
		if(empty($loginToken)){
			return;
		}
		if($loginToken['invalidtime'] < time()){
			return;
		}
		$offt = time() - ($loginToken['invalidtime'] - intval(C('__YYG_INVALIDE_MINUTES__')) * 60); //如果设置为了“记住密码”，这里影响不大
		if($offt > 15){ //大于15秒才可以刷新
			$invalidTime = time() + 15 * 60;
			M('logintoken')->where(['token' => $token])->data([
				'invalidtime' => $invalidTime,
			])->save();
		}

	}

	/**
	 * 检查登录态
	 */
	public function checkAuthStatus(){
		$loginInfo = $this->getLoginInfo();
		if(empty($loginInfo)){
			if(isset($_REQUEST['ajax'])){
				$this->jsonReturn(false, "请先登录！", -2);
			}else{
				$this->redirect('/');
			}
		}
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
		if($errcode == 0 && !empty($errMsg)){
			$errcode = -1;
		}
		$this->ajaxReturn([
			"data" => $data,
			"errMsg" => $errMsg,
			"errCode" => $errcode,
		]);
	}

	public function getAvatarurl($avatarurl, $size='big'){
		if(empty($avatarurl)){
			$avatarurl = C('__YYG_UPLOAD_DIR__').'/avatars/default/big_headpic.jpg';
		}else{
			$pos = strrpos($avatarurl, '/');
			$avatarurl = substr($avatarurl, 0, $pos).'/'.$size.'_'.substr($avatarurl, $pos + 1);
		}
		return $avatarurl.'?t='.time();
	}
    
	
}