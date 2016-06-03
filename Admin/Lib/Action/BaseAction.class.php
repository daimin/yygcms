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
    	//$name = cookie(C("__MP_AUTH_NAME__"));
    	$name = session(C("__MP_AUTH_NAME__"));
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
    				if($admin['role'] == C("__MP_ADMIN__")){
    					session("is_admin", C("__MP_ADMIN__"));
    				
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
		if (! empty ( $_FILES )) {
			$tempFile = $_FILES ['Filedata'] ['tmp_name'];
			
			$fname = $_FILES ['Filedata'] ['name'];
			
			$fext = substr ( $fname, strrpos ( $fname, "." ) + 1);
			
			if(empty($fext)) {
				echo '无效的文件类型';
				return;
			}
			if(!$this->checkExtLimit($fext)){
				echo '无效的文件类型';
				return;
			}
			$sfdir = C("__MP_UPLOAD_DIR__").'/'.date("Ymd");
			$fdir = __MP_SITE_ROOT__.$sfdir;
			if(!file_exists($fdir))
			    createdir($fdir);
			
			$fnew_name = md5(time().$fname) . '.' .$fext;
			$targetFile = $fdir . '/'.$fnew_name;
			
			move_uploaded_file ( $tempFile, $targetFile );
			$attacM = M("attac");
			$data['title'] = $fnew_name;
			$data['path'] = $sfdir.'/'.$fnew_name;
			$data['createtime'] = date("Y-m-d H:i:s");
				
			$id = $attacM->add($data);
			$dataJson = array();
			$dataJson['id'] = $id;
			$dataJson['path'] = __ROOT__.$sfdir.'/'.$fnew_name;
			$dataJson['name'] = $fnew_name;
			echo urldecode(json_encode($dataJson));

		}
	}
	
}