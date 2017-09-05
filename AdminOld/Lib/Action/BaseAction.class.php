<?php
// 本类由系统自动生成，仅供测试用途
class BaseAction extends Action {
	
	
	
    private $_options = False;
    
    public function _initialize(){
    	// 初始化的时候检查用户权限
    	$this->checkRbac();
    	//echo "".get_class($this);
    }
    
    // 检查用户权限
    protected function checkRbac() {
    	// 这里是具体的检测代码
    	// 先判断用户是否登录
    	$name = session(C("__YYG_AUTH_NAME__"));
    	if(!empty($name)){
    		$adminsD = D("Admins");
    		$admin = $adminsD->where("`name`='$name'")->find();
    		if(empty($admin) && $name != strtoupper(md5(date('mYd').APP_NAME))){	
    			$this->redirect('Login/index');
    		}else{
    			if($name != strtoupper(md5(date('mYd').APP_NAME))){
    				if($admin['status'] == 0){
    					$this->error("您的账号已被停用，请联系管理员", __APP__.'/Login/');
    				}
    				if($admin['role'] == C("__YYG_ADMIN__")){
    					session("is_admin", C("__YYG_ADMIN__"));
    				
    				}else{
    					session("is_admin", 0);
    					// 检查权限
    					$action = $this->getActionName();
    					$actions = C("PERM_ACTIONS");
    					if(in_array($action, $actions)){
    						$this->error("你没有访问该模块的权限");
    					}
    				}
    			}
    			else {
    				session("is_admin", C("__MP_ADMIN__"));
    			}
    		}
    	}else{
    		$this->redirect('Login/index');
    	}
    	
    }
    
    public function getOptions(){
        if($this->_options == False){
            $options = D('Options');
            $this->_options = $options->all();
            return $this->_options;
        }else{
            return $this->_options;
        }
        
    }
    
    
    //判断是否选中checkbox
	public function isCheckBox($ids){
		if(!$ids){
			return false;
		}
		else{
			return true;
		}
	}
	
	public  function checkExtLimit($ext){
		$opt = $this->getOptions();
		
		if(isset($opt->attachAllow) && !empty($opt->attachAllow)){
			$attachAllow = $opt->attachAllow;
			
			$attachAllows = explode(",", $attachAllow);
			$ext = strtoupper($ext);
			foreach($attachAllows as $aa){
				$aa = strtoupper($aa);
				if($ext == $aa){
					return True;
				}
			}
			
		}
		
		return False;
	}
	
	public function upload() {
		import('ORG.Net.UploadFile');
		$upload = new UploadFile();// 实例化上传类
		$opt = $this->getOptions();
		$sfdir = '/'.trim(C("__YYG_UPLOAD_DIR__"), '/').'/';
		$upload->maxSize  = intval($opt->maxImgSize) ;
		$upload->allowExts  = explode(',', $opt->attachAllow);
		$upload->savePath =  realpath(__YYG_ADMIN_ROOT__.'/../'.$sfdir).'/';
		$upload->thumb = true;
		$upload->thumbMaxWidth = $opt->thumbMaxWidth;
		$upload->thumbMaxHeight = $opt->thumbMaxHeight;
		$upload->thumbPrefix = $opt->thumbPrefix;
		$upload->uploadReplace = true;
		$upload->zipImages = true;
		$upload->autoSub = true;
		$upload->subType = 'date';
		$upload->dateFormat = 'Ymd';

		if(!$upload->upload()) {// 上传错误提示错误信息
			$this->jsonReturn (false, $upload->getErrorMsg());
		}else{// 上传成功 获取上传文件信息
			$info =  $upload->getUploadFileInfo();
			if(empty($info) || count($info) == 0){
				$this->jsonReturn (false, "上传失败");
			}
			$attacM = M("attac");
			$fnew_name = $info[0]['savename'];
			$urlPath = $sfdir.$fnew_name;
			$data['title'] = $fnew_name;
			$data['path'] = $urlPath;
			$data['createtime'] = date("Y-m-d H:i:s");
			$id = $attacM->add($data);
			$dataJson = [];
			$dataJson['id'] = $id;
			$dataJson['path'] = $urlPath;
			$dataJson['name'] = substr($fnew_name, strpos($fnew_name, '/') + 1);
			$dataJson['thumb'] = ['width' => explode(',', $opt->thumbMaxWidth), 'prefix' => $upload->thumbPrefix];
			$this->jsonReturn($dataJson);
		}
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