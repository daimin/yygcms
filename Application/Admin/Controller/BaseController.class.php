<?php
namespace Admin\Controller;

use Common\Model\OptionsModel;
use Common\Service\UploadHandler;
use \Think\Controller;
use Think\Upload;

// 本类由系统自动生成，仅供测试用途
class BaseController extends Controller {

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
		$admin = $this->getLoginUser();
    	if(!empty($admin)){
			$name = $admin['name'];
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

	public function getLoginUser(){
		$name = session(C("__YYG_AUTH_NAME__"));
		if(!empty($name)) {
			$adminsD = D("Admins");
			return $adminsD->where("`name`='$name'")->find();
		}
		return null;
	}
    
    public function getOptions(){
        return OptionsModel::getOptions();
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
		$imgFieldName = 'yyg_uploadImg';
		$opt = $this->getOptions();
		$uploadBaseDir = C("__YYG_UPLOAD_DIR__");
		$uploadDir = $uploadBaseDir.'/'.date("Ymd");
		$upload_handler = new UploadHandler([
			'upload_dir' => THINK_PATH.'/../'.$uploadDir.'/',
			'upload_url' => THINK_PATH.'/../'.$uploadDir.'/',
			'param_name' => $imgFieldName,
			'image_versions' => [],
			'print_response' => false,
			'max_file_size' => $opt->maxImgSize,
			'accept_file_types' => '/\.(gif|jpe?g|png)$/i',
		]);
		$repos = $upload_handler->get_response();
		if(empty($repos)){
			$this->jsonReturn (false, "上传失败");
		}

		$uploadInfo = $repos[$imgFieldName][0];
		if(isset($uploadInfo->error)){
			$this->jsonReturn (false, $uploadInfo->error);
		}

		$opt = $this->getOptions();
		$attacM = M("attac");
		$fullPath = $uploadInfo->url;
		$relPath = substr($fullPath, strpos($fullPath, $uploadBaseDir));

		$data['title'] = $uploadInfo->name;
		$data['path'] = $relPath;
		$data['createtime'] = date("Y-m-d H:i:s");
		$id = $attacM->add($data);
		genThumbs($fullPath, $opt, substr($fullPath, 0, strpos($fullPath, $uploadBaseDir)), substr($relPath, 0, strrpos($relPath, '/')).'/thumbs/', $uploadInfo->name);
		$dataJson = [];
		$dataJson['id'] = $id;
		$dataJson['path'] = $relPath;
		$dataJson['name'] = $uploadInfo->name;
		$dataJson['thumb'] = ['width' => explode(',', $opt->thumbMaxWidth), 'prefix' => $opt->thumbPrefix];
		$this->jsonReturn($dataJson);

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

	public function isGet(){
		return IS_GET;
	}
	
}