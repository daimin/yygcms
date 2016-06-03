<?php
// 本类由系统自动生成，仅供测试用途
class MsgBoardAction extends BaseAction {
	
    
    
    public function index($o_keyword = '', $sort='desc'){
    	import('ORG.Util.Page');// 导入分页类
     	$msgboardM = M("msgboard");
     	
     	if(empty($sort)){
     		$sort = I('sort');
     		if(empty($sort)){
     			$sort = 'desc';
     		}
     	}
     	if(empty($o_keyword)){
     		$o_keyword = I("o_keyword");
     	}
     	$map            = array();
     	if(!empty($o_keyword)){
     		$map['name|contact|content'] = array('like', '%'.$o_keyword.'%');
     	}
     	$opts           = $this->getOptions();
     	$opts = $this->getOptions();
     	$count          = $msgboardM->where($map)->count();// 查询满足要求的总记录数
     	$Page           = new Page($count, $opts->pageSize);// 实例化分页类 传入总记录数和每页显示的记录数
     	$Page->parameter   =   '&o_keyword='.$o_keyword.'&sort='.$sort;
     	$show           = $Page->show();// 分页显示输出
     	
     	$list           = $msgboardM->where($map)->order('`ctime` '.$sort)->limit($Page->firstRow.','.$Page->listRows)->select();
     	$this->assign('msgs', $list);// 赋值数据集
     	$this->assign('page',$show);// 赋值分页输出
     	$this->assign('sort', $sort);
     	$this->display();
	}
	
    
   public function del(){
		$ids = I("ids");
		$ids = explode(",", $ids);
		$msgboardM = M("msgboard");
		
		
		foreach($ids as $id){
			if(!empty($id)){
				// 先查询是否有子文档，如果有则删除之
				$msgboardM->where("`id`='$id'")->delete();
			}
		}
		$this->ajaxReturn(1);
	}
	
	public function reply()
	{
		$msgboardM = M("msgboard");
		$msgboardM->query('alter table mp_msgboard add recontent text');
		$msgboardM->query("alter table mp_msgboard add rtime datetime default '0000-00-00 00:00:00'");
		$msg = $msgboardM->find(I('id'));
		header('Content-Type:text/html; charset=utf-8');
		if($this->isGet())
		{
			$this->assign('cid', I("id"));
			$this->assign('msg', $msg);
			$this->display();
		}
		else
		{
			
			if(empty($msg))
			{
				echo '<script type="text/javascript">
				    alert("不存在的回复");
				    window.close();
				</script>';
			}
			else
			{
				
				$msg['recontent'] = I('recontent');
				$msg['rtime']     = date("Y-m-d H:i:s");
				$msgboardM->save($msg);
				echo '<script type="text/javascript">
				alert("回复成功");
				window.close();
				window.opener.location.reload();
				</script>';
			}
			//print_r(I("recontent"));
		}
	}
	
	    
}