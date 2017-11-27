<?php

namespace Admin\Controller;

// 本类由系统自动生成，仅供测试用途
use Admin\Model\ContentModel;
use Think\Page;

class ContentController extends BaseController {

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
		$list = $contentD->where($map)->order('topnum, `order`,`createtime` '.$sort)->limit($Page->firstRow.','.$Page->listRows)->select();
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

		/** @var  $contentD  \Admin\Model\ContentModel*/
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
		$list = $contentD->where($map)->order('topnum desc, `order`,`createtime` '.$sort)->limit($page->firstRow.','.$page->listRows)->select();
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
			if(empty($subCategorys)){
				$subCategorys = [$category];
			}else{
				array_unshift($subCategorys, $category);
			}
			$this->assign('categorys', $subCategorys);
			$this->assign('category', $category);
			$this->assign('option', $opt);
			$this->assign('stages', C('__YYG_YUER_STAGE__'));
			$this->display("Content:add");
		}else{
			/** @var  $contentD /Admin/Model/ContentModel */
			$contentD = D("Content");
			$contentD->startTrans();
			if (!$contentD->create(False, 1)){
				// 如果创建失败 表示验证没有通过 输出错误提示信息
				$this->error($contentD->getError());
				$contentD->rollback();
				exit();
			}else{
				try{
					$selCategoryId = I('post.category');
					if(empty($selCategoryId)){
						$contentD->category_id = $category['id'];
					}else{
						$contentD->category_id = $selCategoryId;
					}

					$cid = $contentD->add();
					$stages = I('post.yuer_stage');
					if(!empty($stages)){
						foreach($stages as $stage){
							$data = ['cid' => $cid, 'stage' => $stage];
							M("stage_rel")->add($data, [], true);
						}
					}

					$this->_addAttac($cid);
					$contentD->addTags($cid, I("post.tags"));
					$contentD->commit();
				}catch (\Exception $e){
					$contentD->rollback();
					$this->error($e->getMessage());
				}

				$this->success("添加文档成功", __CONTROLLER__.'/category/code/'.$code);
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
		
			$this->success("添加文档成功", __CONTROLLER__.'/index/type/'.$type);
		}

	}

	private function getYuerStages($cid){
		$stages = M("stage_rel")->where(['cid' => $cid])->select();
		$selStages = [];
		foreach ($stages as $stage){
			$selStages []= $stage['stage'];
		}
		$this->assign('selStages', $selStages);
	}

	private function getTagsString($cid){
		$tags = M("tags")->where(['cid' => $cid])->select();
		$tagArr = [];
		foreach($tags as $tag){
			$tagArr []= $tag['tag'];
		}

		return implode(',', $tagArr);
	}

	public function edit($cid=False){
		$contentD = D("Content");
		$content = $contentD->find($cid);

		$category = M("category")->where(['id' => $content['category_id']])->find();
	    if($this->isGet()){
			$subCategorys = M("category")->where(['pid' => $category['id']])->select();
			if(empty($subCategorys) && $category['pid'] != 0){
				//证明当前选择的分类不是一级分类
				$parentCategory = M("category")->where(['id' => $category['pid']])->find();
				$subCategorys = M("category")->where(['pid' => $category['pid']])->select();
				array_unshift($subCategorys, $parentCategory);
			}else{
				if(empty($subCategorys)){
					$subCategorys = [$category];
				}else{
					array_unshift($subCategorys, $category);
				}
			}
			$this->assign('categorys', $subCategorys);
			$this->assign('category', $category);
			$this->assign("content", $content);
            $opts = $this->getOptions();
            $this->assign("attachAllow", $this->_sAttachAllow($opts->attachAllow));
			$this->assign('option', $opts);
			$this->assign('stages', C('__YYG_YUER_STAGE__'));
			$this->assign('tags', $this->getTagsString($cid));
			$this->getYuerStages($cid);
			$this->display("Content:edit");

		}else{
			$contentD = D("Content");
			$contentD->startTrans();
			if (!$contentD->create(False, 2)){
				// 如果创建失败 表示验证没有通过 输出错误提示信息
				$this->error($contentD->getError());
				$contentD->rollback();
				exit();
			}else{
				try{
					$selCategoryId = I('post.category');
					if(empty($selCategoryId)){
						$contentD->category_id = $category['id'];
					}else{
						$contentD->category_id = $selCategoryId;
					}
					M("stage_rel")->delete(['cid' => $cid]);
					$stages = I('post.yuer_stage');
					if(!empty($stages)){
						foreach($stages as $stage){
							$data = ['cid' => $cid, 'stage' => $stage];
							M("stage_rel")->add($data, [], true);
						}
					}
					$contentD->save();
					$this->_addAttac(I("id"));
					$this->addTags($cid);
					$contentD->commit();
				}catch (\Exception $e){
					$contentD->rollback();
				}
				$pageCode = $category['pagecode'];
				if($category['pid'] != 0){
					$parentCategory = M("category")->where(['id' => $category['pid']])->find();
					$pageCode = $parentCategory['pagecode'];
				}
				$this->success("编辑文档成功", __CONTROLLER__.'/category/code/'.$pageCode);
			}
		}
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

			$this->success("更新文档成功", __CONTROLLER__.'/index/type/'.I("type"));
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
			if(strpos($attac['title'], '/') === false){
				$dataJson['name'] = $attac['title'];
			}else{
				$dataJson['name'] = substr($attac['title'], strpos($attac['title'], '/') + 1);
			}

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
		if($status == 0){
			$data['topnum'] = 0;
		}
		$res = $contentD->where("`id`='$cid'")->save($data);
		$this->jsonReturn($res);
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

	public function puttop(){
		$cid = I("id");
		if(empty($cid)) return;
		$contentD = D("Content");
		$content = $contentD->find($cid);
		if($content['status'] == 0){
			$this->jsonReturn(false, '草稿文章无法置顶');
		}
		$maxTopNumContent = $contentD->where(['category_id' => $content['category_id']])->order("topnum desc")->limit(1)->find();
		$data = [];
		$data['topnum'] = $maxTopNumContent['topnum'] + 1;
		$res = $contentD->where("`id`='$cid'")->save($data);
		$this->jsonReturn($res);
	}

	public function canceltop(){
		$cid = I("id");
		if(empty($cid)) return;
		$contentD = D("Content");
		$data = [];
		$data['topnum'] = 0;
		$res = $contentD->where("`id`='$cid'")->save($data);
		$this->jsonReturn($res);
	}


	public function setToDisplayIndex(){
		$disId = I('post.disId');
		$cid = I('post.id');
		$res = D("Content")->where("`id`='$cid'")->save(['indexdisplay' => $disId]);
		$this->jsonReturn($res);
	}
}