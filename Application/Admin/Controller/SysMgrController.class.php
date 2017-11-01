<?php
namespace Admin\Controller;

// 本类由系统自动生成，仅供测试用途
class SysMgrController extends BaseController {
    
    public function index(){
        //默认系统配置
        $this->assign("options", $this->getOptions());       
        $this->display("System:SysConfig");
	}
    
    public function updateCfg(){
        $options = D("Options");
       
        $options->set("siteUrl", I('siteUrl'));
        $options->set("mail", I('mail'));
        $options->set("siteName", I('siteName'));
        $options->set("pageSize", intval(I('pageSize')));
        $options->set("keywords", I('keywords'));
        $options->set("description", I('description'));
        $options->set("attachAllow", I('attachAllow'));
        $options->set("seoName", I('seoName'));
        $options->set("copyright", I('copyright'));
        
        $this->success('修改成功', __URL__);
    }
    /**
     * 清除系统缓存
     */
    public function clearCache(){
        del_dir(TEMP_PATH);
        del_dir(__YYG_ADMIN_ROOT__."/Runtime/Temp/");
        del_dir(__YYG_SITE_ROOT__."Runtime/Temp/");
   
        del_dir(CACHE_PATH);
        del_dir(__YYG_SITE_ROOT__."Runtime/Cache/");
        del_dir(DATA_PATH.'_fields/');
        del_dir(__YYG_SITE_ROOT__.'Runtime/Data/_fields/');
        
        $this->redirect("Index/top");
    }
    
    public function backup(){
        $m = new \Think\Model();
        //C函数获取配置信息
		$list = $m->query("SHOW TABLE STATUS FROM "."`".C('DB_NAME')."`");
		$tables = array();
		$newList = [];
		foreach ($list as $key => $val)
		{
			$nval = [];
			foreach($val as $k2 => $v2){
				$nval[strtolower($k2)] = $v2;
			}

			$newList[$key] = $nval;
		}
		
        foreach ($newList as $key => $val)
		{
			$tables[$key]['name'] = $val['name'];//表名
			$tables[$key]['rows'] = $val['rows'];//记录数
			$tables[$key]['engine'] = $val['engine'];//引擎
			$tables[$key]['data_length'] = sizecount($val['data_length']);//表大小
			$tables[$key]['create_time']=$val['create_time'];//表创建时间
			$tables[$key]['collation']=$val['collation'];//编码类型
        }

		$this->assign('list', $tables);
        $this->display("System:DataBackup");
    }
    
    
    //数据备份
	public function doBackup(){
        
		$tbs = I('tables');
		$tbstr = implode(',',$tbs);
		if(!$this->isCheckBox($tbstr)){
			$this->error('请选中记录！');
		}
		$filesize = intval(I('filesize'));
		if ($filesize < 512) 
		{
			$this->error("每个分卷大小要大于521K！");
		}
		$data = $this->getBackupData($tbs,$filesize);
		if($this->wFile($data)){
			$this->success('备份数据成功！');
		}
		else{
			$this->error('备份数据失败！');
		}
	}

	//获取备份数据
	private function getBackupData($tables, $filesize){
		$data = '';
		foreach($tables as $tab){
            \Think\Log::write($tab);
			$obj = M(str_replace(C('DB_PREFIX'),'',$tab));//实例化一个表模型
			$row = $obj->query("SHOW CREATE TABLE $tab");
			$data .= "DROP TABLE IF EXISTS `".$tab."`;\n" . $row[0]['Create Table'] . ";\n";
			$datalist = $obj->select();
			foreach($datalist as $val){
				$data .= "INSERT INTO `".$tab."` VALUES (";
				$vals = array();
				foreach($val as $v){
                    //用PDO::quote替换mysql_real_escape_string(已经被废弃)
					$vals[] = "'" . mysql_escape_mimic($v) . "'";
				}
				$data .= implode(', ', $vals) . ");\n"; 
			}
			$data .= "\n";
			if(strlen($data) > $filesize * 1024){
				$datarow[] = $data;
				$data = ''; 
			}
		}
		//将最后部分的sql放入数组
		if(is_array($datarow)){
			array_push($datarow, $data);
			return $datarow; 
		}
		return $data;
	}

	//写入文件
	private function wFile($data){
		$datadir = __YYG_SITE_ROOT__.'/BackupData/';
        if(!file_exists($datadir)){
            mkdir($datadir);
        }
		if(is_array($data)){
			$i = 1;
			foreach($data as $val){
				$filename = $datadir . "yyg_" . date("YmdHis") . "_part{$i}.sql"; //文件名

              
				if(!$fp = @fopen($filename, "w+")){ 
					echo "<font coloe='red'>提示：在打开文件时遇到错误！</font>"; 
					return false;
				}
				if(!@fwrite($fp, $val)){
					echo "<font color='red'>提示：在写入信息时遇到错误！</font>"; 
					fclose($fp); //需关闭文件才能删除
					unlink($filename); //删除文件
					return false;
				}
				$i++;
			}
		}
		else{ //单独备份
			$filename = $datadir . "yyg_" . date("YmdHis") . ".sql";
			if(!$fp = @fopen($filename, "w+")){
				echo "<font coloe='red'提示：>在打开文件时遇到错误!</font>"; 
				return false;
			}
			if(!@fwrite($fp, $data)){
				echo "<font color='red'>提示：在写入信息时遇到错误!</font>"; 
				fclose($fp);
				unlink($filename);
				return false;
			}
		}
		fclose($fp);
		return true;
	}
    
    
    
   
}