<?php
// 本类由系统自动生成，仅供测试用途
class ContentAction extends BaseAction {

	/**
	 * 获取分类列表
	 * @param $code
	 * @param string $o_keyword
	 * @param string $o_status
	 * @param string $sort
	 * @param string $o_category
	 * @param string $startdate
	 * @param string $enddate
	 */
    public function category($code, $o_keyword='', $o_status='', $sort='', $o_category='', $startdate='', $enddate=''){
 
        //默认系统配置
        $opts = $this->getOptions();
        $this->contentListData($code, $opts->pageSize, $o_keyword,$o_status, $sort, $o_category, $startdate, $enddate);
        $this->display("Content:index");
        
	}
	
	private function _sAttachAllow($attachAllow){
		if(!empty($attachAllow)){
			$attachAllows = explode(",", $attachAllow);
			
			$attachAllowNew = array();
			foreach ($attachAllows as $aa){
				array_push($attachAllowNew, '*.'.$aa);
			}
			
			return  implode(";", $attachAllowNew);
			
		}
	}
	
	public  function sublist($pid, $o_keyword='', $o_status='', $sort=''){
		$contentD = D("Content");
		$content = $contentD->find($pid);
		
		$opts = $this->getOptions();
		$this->assign("parentContent", $content);
		$this->_contentDataWithPid($pid, $opts->pageSize, $o_keyword='', $o_status='', $sort='');
		$this->display("Content:".$content['type'].":sublist:index");
	}
	
	private function _contentDataWithPid($pid, $pageSize, $o_keyword, $o_status,$sort){
		import('ORG.Util.Page');// 导入分页类
		
		if(empty($o_status)){
			$o_status = I("o_status");
		}
		if(empty($o_keyword)){
			$o_keyword = I("o_keyword");
		}
		
		if(empty($pid)){
			$pid = I("pid");
		}
		
		if(empty($sort)){
			$sort = I('sort');
			if(empty($sort)){
				$sort = 'desc';
			}
		}
		
		$map['parentid']  = array('eq', $pid);
		if($o_status != ''){
			$map['status']  = array('eq', $o_status);
		}
		if(!empty($o_keyword)){
			$map['title|relurl|createtime'] = array('like', '%'.$o_keyword.'%');
		}
		
		
		$contentD = D("Content");
		$count      = $contentD->where($map)->count();// 查询满足要求的总记录数
		$Page       = new Page($count, $pageSize);// 实例化分页类 传入总记录数和每页显示的记录数
		
		
		$Page->parameter   =   "pid=".urlencode($pid).'&o_keyword='.$o_keyword.'&o_status='.$o_status.'&sort='.$sort;
		
		
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = $contentD->where($map)->order('`order`,`createtime` '.$sort)->limit($Page->firstRow.','.$Page->listRows)->select();
		for($i = 0, $len = count($list); $i < $len; $i++){
			$list[$i]['attac_count'] = $contentD->getAttatsCount($list[$i]['id']);
		}
		$this->assign('list', $list);// 赋值数据集
		$this->assign('sort', $sort);
		$this->assign('page',$show);// 赋值分页输出
	}

	/**
	 * 获取分类列表数据
	 * @param $pageCode
	 * @param $pageSize
	 * @param $o_keyword
	 * @param $o_status
	 * @param $sort
	 * @param $o_category
	 * @param $startdate
	 * @param $enddate
	 */
	private function contentListData($pageCode, $pageSize, $o_keyword, $o_status, $sort, $o_category, $startdate, $enddate){
		import('ORG.Util.Page');// 导入分页类

		if(empty($o_status)){
			$o_status = I("o_status");
		}
		if(empty($o_keyword)){
			$o_keyword = I("o_keyword");
		}

		if(empty($pageCode)){
			$pageCode = I("code");
		}
		
		if(empty($sort)){
			$sort = I('sort');
			if(empty($sort)){
				$sort = 'desc';
			}
		}

		if($o_category === ''){
			$o_categoryId = I("get.o_category");
		}else{
			$o_categoryId = $o_category;
		}

		if($startdate === ''){
			$startdate = I("get.startdate");
		}

		if($enddate === ''){
			$enddate = I("get.enddate");
		}

		//==============================================

		$category = D("category")->where(['pagecode' => $pageCode])->find();
		$subCategorys = D("category")->where(['pid' => $category['id']])->select();
		$inIds = [];
		foreach($subCategorys as $subCategory){
			$inIds []= $subCategory['id'];
		}
		$inIds []= $category['id'];

		$map['category_id']  = array('in', $inIds);
		if($o_status !== ''){
			$map['status']  = array('eq', $o_status);
		}

		if($o_categoryId !== ''){
			$map['category_id'] = $o_categoryId;
		}

		if($startdate !== '' && $enddate === ''){
			$map['createtime']  = ['EGT', $startdate];
		}

		if($startdate === '' && $enddate !== ''){
			$map['createtime']  = ['ELT', $enddate];
		}

		if($startdate !== '' && $enddate !== ''){
			$map['createtime']  = [['EGT', $startdate], ['ELT', $enddate], 'AND'];
		}

		if(!empty($o_keyword)){
			$map['title|relurl|embed_code'] = array('like', '%'.$o_keyword.'%');
		}

		/** @var  $contentD  ContentModel*/
		$contentD = D("Content");
		$count      = $contentD->where($map)->count();// 查询满足要求的总记录数
		$page       = new Page($count, $pageSize);// 实例化分页类 传入总记录数和每页显示的记录数

		$urlParams = [
			'code' => urlencode($pageCode),
			'o_keyword' => $o_keyword,
			'o_status' => $o_status,
			'sort' => $sort,
			'o_category' => $o_categoryId,
			'startdate' => $startdate,
			'enddate' => $enddate
		];
	    $page->parameter = http_build_query($urlParams);

		$show       = $page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = $contentD->where($map)->order('`order`,`createtime` '.$sort)->limit($page->firstRow.','.$page->listRows)->select();
		for($i = 0, $len = count($list); $i < $len; $i++){
			$list[$i]['attac_count'] = $contentD->getAttatsCount($list[$i]['id']);
			$subCategory = M("category")->where(['id' => $list[$i]['category_id']])->find();
			$list[$i]['category_name'] =  $subCategory ? $subCategory['name'] : "";
		}

		$this->assign('category', $category);// 赋值数据集
		array_unshift($subCategorys, $category);
		$this->assign('categorys', $subCategorys);// 赋值数据集
		$this->assign('list', $list);// 赋值数据集
		$this->assign('sort', $sort);
		$this->assign('o_status', $o_status);
		$this->assign('o_categoryId', $o_categoryId);
		$this->assign('o_keyword', $o_keyword);
		$this->assign('startdate', $startdate);
		$this->assign('enddate', $enddate);
		$this->assign('page', $show);// 赋值分页输出
		
	}

	/**
	 * 新增文章
	 * @param $code
	 * @param int $pid
	 */
	public function add($code){
		$category = M("category")->where(['pagecode' => $code])->find();
		if(empty($category)){
			$this->error("分类{$code}不存在");
		}
		if($this->isGet()){
			$opt = $this->getOptions();
			$this->assign("attachAllow", $this->_sAttachAllow($opt->attachAllow));
			$subCategorys = M("category")->where(['pid' => $category['id']])->select();
			array_unshift($subCategorys, $category);
			$this->assign('categorys', $subCategorys);
			$this->assign('category', $category);
			$this->assign('option', $opt);
			$this->display("Content:add");
		}else{
			$contentD = D("Content");
			if (!$contentD->create(False, 1)){
				// 如果创建失败 表示验证没有通过 输出错误提示信息
				$this->error($contentD->getError());
				exit();
			}else{
				$selCategoryId = I('post.category');
				if(empty($selCategoryId)){
					$contentD->category_id = $category['id'];
				}else{
					$contentD->category_id = $selCategoryId;
				}
				$cid = $contentD->add();
				$this->_addAttac($cid);
				$this->success("添加文档成功", __URL__.'/category/code/'.$code);
			}
		}
		
	}
	
	public function addWithAttachDesc($type){
		$contentD = D("Content");
		if (!$contentD->create(False, 1)){
			// 如果创建失败 表示验证没有通过 输出错误提示信息
			$this->error($contentD->getError());
			exit();
		}else{

			$contentD->type = $type;
			$cid = $contentD->add();
			$this->_addAttac($cid);
			$this->_addAttacDesc();
		
			$this->success("添加文档成功", __URL__.'/index/type/'.$type);
		}

	}
	
	public function edit($cid=False){
	    if($this->isGet()){
	    	$contentD = D("Content");
	    	$content = $contentD->find($cid);
			$category = M("category")->where(['id' => $content['category_id']])->find();
			$subCategorys = M("category")->where(['pid' => $category['id']])->select();
			array_unshift($subCategorys, $category);
			$this->assign('categorys', $subCategorys);
			$this->assign('category', $category);
			$this->assign("content", $content);
            $opts = $this->getOptions();
            $this->assign("attachAllow", $this->_sAttachAllow($opts->attachAllow));
			$this->assign('option', $opts);
			$this->display("Content:edit");

		}else{
			$contentD = D("Content");
			if (!$contentD->create(False, 2)){
				// 如果创建失败 表示验证没有通过 输出错误提示信息
				$this->error($contentD->getError());
				exit();
			}else{
			
				$contentD->save();
				$this->_addAttac(I("id"));
                $content = $contentD->find(I("id"));
                
                if($content['parentid'] != 0){
                	$this->success("更新文档成功", __URL__.'/sublist/pid/'.$content['parentid']);
                }else{
                	if(strpos(I("type"), "ketang_") !== False){
                		$this->success("更新文档成功", __URL__.'/Ketang/');
                	}else{
                		$this->success("更新文档成功", __URL__.'/index/type/'.I("type"));
                	}
                }
				
			}
		}
	}


	/**
     * 家装一站的编辑更新
     * @param type $type
     */
	public function editOneSite($type=False){
		if($this->isGet()){
			$contentD = D("Content");
			$content = $contentD->where("`type`='$type'")->limit(1)->find();
			if(empty($content)){
				$data['type'] = $type;
				$data['title'] = "输入你的标题";
				$data['content'] = "输入你的内容";
                $data['createtime'] = date("Y-m-d H:i:s");
                $data['modifytime'] = date("Y-m-d H:i:s");
				$oid = $contentD->add($data);
                $content = $contentD->where("`type`='$type'")->limit(1)->select();
			}
		
			$type = ucfirst($type);
			$this->assign("content", $content);
			$opts = $this->getOptions();
            $this->assign("opt", $opts);
			$this->display("Content:$type:edit");				
		}else{
			$contentD = D("Content");
			if (!$contentD->create(False, 2)){
				// 如果创建失败 表示验证没有通过 输出错误提示信息
				$this->error($contentD->getError());
				exit();
			}else{
					
				$contentD->save();
				$this->_addAttac(I("id"));
				$content = $contentD->find(I("id"));
		
				$this->success("更新文档成功", __URL__.'/editOneSite/type/'.I("type"));
		
			}
		}
	}
    
    /**
     * 关于我们的编辑更新
     * @param type $type
     */
	public function editLookUs($type=False){
		if($this->isGet()){
			$contentD = D("Content");
			$content = $contentD->where("`type`='$type'")->limit(1)->find();
			if(empty($content)){
				$data['type'] = $type;
				$data['title'] = "输入你的标题";
				$data['content'] = "输入你的内容";
                $data['createtime'] = date("Y-m-d H:i:s");
                $data['modifytime'] = date("Y-m-d H:i:s");
				$oid = $contentD->add($data);
                $content = $contentD->where("`type`='$type'")->limit(1)->select();
			}
			$type = ucfirst($type);
			$this->assign("content", $content);
			$opts = $this->getOptions();
            $this->assign("opt", $opts);
			$this->display("Content:$type:edit");				
		}else{
			$contentD = D("Content");
			if (!$contentD->create(False, 2)){
				// 如果创建失败 表示验证没有通过 输出错误提示信息
				$this->error($contentD->getError());
				exit();
			}else{
					
				$contentD->save();
				$this->_addAttac(I("id"));
				$content = $contentD->find(I("id"));
		
				$this->success("更新文档成功", __URL__.'/editOneSite/type/'.I("type"));
		
			}
		}
	}
	
	public function editProject($type=False){
		$this->editLookUs($type);
	}
	
	public function editWithAttachDesc($cid=False){
		$contentD = D("Content");
		if (!$contentD->create(False, 2)){
			// 如果创建失败 表示验证没有通过 输出错误提示信息
			$this->error($contentD->getError());
			exit();
		}else{
				
			$contentD->save();
			$this->_addAttac(I("id"));
			$this->_addAttacDesc();

			$this->success("更新文档成功", __URL__.'/index/type/'.I("type"));
		}
	}
	
	/**
	 * 添加附件与文档的关系
	 */
	private function _addAttac($cid){
		$ids = I("yyg_uploadImg_ids");

		$ids = explode(",", $ids);
		$attacRelM = M("attac_rel");
		
		foreach($ids as $id){
			if(!empty($id)){
				$data = array();
				$data['att_id'] = $id;
				$data['rel_id'] = $cid;
				$attacRelM->add($data, array(), True);
			}
		}
	}
	
	/**
	 * 添加附件的描述
	 */
	private function _addAttacDesc(){
		$ids = I("mp_uploadImg_ids");
		
		$ids = explode(",", $ids);
		if(empty($ids)) return;
		$attacM = M("attac");
		foreach($ids as $id){
			$desc = I("desc_".$id);
			
			if(!empty($desc)){
				//Log::write($desc);
				$desc = newLineReplace($desc);
				$attacM->where("`id`='$id'")->save(array("description"=>$desc));
			}
		}
		
	}
	/**
	 * 获取JSON格式的附件列表
	 * @return number
	 */
	public function getAttacs(){
		$cid = I('id');
		if(empty($cid)) return 0;
		$arels = M("attac_rel")->where("`rel_id`='$cid'")->select();
		
		$dataJsons = array();
		$attacM = M("attac");
		$opt = $this->getOptions();

		foreach($arels as $ar){
			$att_id = $ar['att_id'];
			$attac = $attacM->find($att_id);
			if(empty($attac)) {
				M("attac_rel")->where("`rel_id`='$cid' and `att_id`='$att_id'")->delete();
				
				continue;
			}
			$dataJson = array();
			$dataJson['id'] = $attac['id'];
			$dataJson['path'] = __ROOT__.$attac['path'];
			$dataJson['name'] = $attac['title'];
			$dataJson['desc'] = brReplace($attac['description']);
			$dataJson['thumb'] = ['width' => explode(',', $opt->thumbMaxWidth), 'prefix' => $opt->thumbPrefix];
			array_push($dataJsons, $dataJson);
		}

		$this->jsonReturn($dataJsons) ;
	}
	
	public function del(){
		$ids = I("ids");
		$ids = explode(",", $ids);
		$contentD = D("Content");
		
		foreach($ids as $id){
			if(!empty($id)){
				// 先查询是否有子文档，如果有则删除之
				$subConts = $contentD->where("`parentid`='$id'")->select();
				if(!empty($subConts)){
					foreach($subConts as $suCont){
						$this->_delAttr($suCont['id']);
						$contentD->where("`id`='".$suCont['id']."'")->delete();
					}
					
				}
				$this->_delAttr($id);
				$contentD->where("`id`='$id'")->delete();
			}
		}
		$this->jsonReturn (1);
	}
	/**
	 * 删除指定的ContentId 的所有附件及其关联
	 * @param unknown_type $cid
	 */
	private function _delAttr($cid){
		$attac_relM = M("attac_rel");
		$attac_rels = $attac_relM->where("`rel_id`='$cid'")->select();
		foreach($attac_rels as $ar){
			$this->_doDelAttr($cid, $ar['att_id']);
		}
	}
	
	/**
	 * 删除指定的Content Id和附件ID的附件及其关联
	 * @param unknown_type $cid
	 * @param unknown_type $attId
	 */
	private function _doDelAttr($cid, $attId){
		$attId = intval($attId);
		if(empty($attId)) $this->ajaxReturn("错误的图片");;
		
		$attacM = M("attac");
		$attac = $attacM->find($attId);
		delFile(__YYG_SITE_ROOT__.$attac['path']);
		if(!empty($cid)) {
			M("attac_rel")->where("`att_id`='$attId' and `rel_id`='$cid'")->delete();
		};
		
		$res = $attacM->where("`id`='$attId'")->delete();
		return $res;
		
	}
	
	public function delAttr(){
		$attId = I("id");
		$cid = I("cid");
		$res = $this->_doDelAttr($cid, $attId);
		if($res)
			$this->ajaxReturn($res);
		exit();
	}
	
	public function changeStatus(){
		$cid = I("id");
		$status = I("status");
		if(empty($cid)) return;
		$contentD = D("Content");
		$data = array();
		$data['status'] = $status;
		$res = $contentD->where("`id`='$cid'")->save($data);
		$this->ajaxReturn($res);
	}
	
	public function changeContentOrder(){
		
		$cid = I("id");
		$corder = I("order");
		$corder = intval($corder);
		
		if(empty($cid)) return;
		$contentD = D("Content");
		$data = array();
		$data['order'] = $corder;
		
		$res = $contentD->where("`id`='$cid'")->save($data);
		$this->ajaxReturn($res);
	}
	
	private $MP_KETANGS_TYPES = array(
			"ketang_shui"   => "水",
			"ketang_dian"   => "电",
			"ketang_tuliao" => "涂料",
			"ketang_diban"  => "地板",
			"ketang_zhuan"  => "砖",
			"ketang_men"    => "门",
			"ketang_chuju"  => "厨具",
			"ketang_jieju"  => "洁具",
			"ketang_rizhi"  => "装修日志",
	
	);
	
	public function ketang($o_keyword='', $sort='', $o_status = '', $o_type='')
	{
		import('ORG.Util.Page');// 导入分页类
		$opts = $this->getOptions();
		if(empty($o_keyword)){
			$o_keyword = I("o_keyword");
		}
		if(empty($o_status)){
			$o_status = I("o_status");
		}
		
		if(empty($o_type)){
			$o_type = I("o_type");
		}
		
		if(empty($sort)){
			$sort = I('sort');
			if(empty($sort)){
				$sort = 'desc';
			}
		}
		$types = array();
		if(empty($o_type))
		{
			foreach($this->MP_KETANGS_TYPES as $k=>$v)
			{
				array_push($types, array('eq', $k));
			}
		}
		else
		{
			array_push($types, array('eq', $o_type));
		}
		
		array_push($types, 'OR');
		$map['type']  = $types;
        if($o_status != '')
        {
        	$map['status'] = $o_status;
        }
		
        
		$map['parentid']  = array('eq', 0);
		if(!empty($o_keyword)){
			$map['title|relurl|createtime'] = array('like', '%'.$o_keyword.'%');
		}
		
		
		$contentD = D("Content");
		$count      = $contentD->where($map)->count();// 查询满足要求的总记录数
		$Page       = new Page($count, $opts->pageSize);// 实例化分页类 传入总记录数和每页显示的记录数
		
		
		$Page->parameter   =  '&o_keyword='.$o_keyword.'&sort='.$sort.'&o_status='.$o_status.'&o_type='.$o_type;
		
		
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = $contentD->where($map)->order('`order`,`createtime` '.$sort)->limit($Page->firstRow.','.$Page->listRows)->select();
		for($i = 0, $len = count($list); $i < $len; $i++){
			$list[$i]['attac_count'] = $contentD->getAttatsCount($list[$i]['id']);
		}
		$this->assign('types', $this->MP_KETANGS_TYPES);// 赋值数据集
		$this->assign('list', $list);// 赋值数据集
		$this->assign('sort', $sort);
		$this->assign('page',$show);// 赋值分页输出
		$this->display("Content:Ketang:index");
	}
	
	public function addKetang()
	{
		if($this->isGet()){
		    $this->assign('types', $this->MP_KETANGS_TYPES);// 赋值数据集
		    $this->display('Content:Ketang:add');
		}else{
			$this->add(I('type'));
		}
	}
	
	public function editKetang($cid='')
	{
		if($this->isGet()){
			$contentD = D("Content");
			$content = $contentD->find($cid);
			$this->assign("content", $content);
			$opts = $this->getOptions();
			$this->assign("attachAllow", $this->_sAttachAllow($opts->attachAllow));
			$this->assign('types', $this->MP_KETANGS_TYPES);// 赋值数据集
			$this->display('Content:Ketang:edit');
		}else{
			$this->edit(I('id'));
		}
	}
    
     
}