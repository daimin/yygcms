<?php
namespace Admin\Controller;

// 本类由系统自动生成，仅供测试用途
class CategoryController extends BaseController {
    
    public function index(){
        //默认系统配置
//        $users = M("category")->order("createtime desc")->select();
//        $this->assign("users", $users);
        echo "no index page";
	}
    
    public function mgr(){
        $this->display();
    }

    public function getList(){
        $returnData = [];
        $parentCategorys = M("category")->where("pid=0")->select();
        foreach($parentCategorys as $parentCategory){
            $childNodes = M("category")->where("pid=".$parentCategory['id'])->select();

            $pNode = [
                'nodes' => [],
            ];

            $isAllChildNodeDisabled = true;

            foreach($childNodes as $childNode){
                $editStr = '<a href="javascript:void(0)" onclick="doEdit(\''.$childNode['id'].'\')">编辑</a>';
                $enabledStr = '<a href="javascript:void(0)" style="color:#22bb22;" onclick="doDisabled(\''.$childNode['id'].'\')">禁用</a>';
                if($childNode['status'] == 0){
                    $enabledStr = '<a href="javascript:void(0)"  style="color:#bb2222;"  onclick="doEnabled(\''.$childNode['id'].'\')">启用</a>';
                }else{
                    $isAllChildNodeDisabled = false;
                }
                $pNode['nodes'] []= [
                    'text' => '<span id="cate-'.$childNode['id'].'-text">'.$childNode['name'].'</span>'.
                        '<input id="cate-'.$childNode['id'].'-edit" size="32"  type="text" name="cate-'.$childNode['id'].'-edit" value="'.$childNode['name'].'" style="display:none" />'.
                        '<div class="category-del-li-div">'.$editStr.'<a onclick="doDel(\''.$childNode['id'].'\', \''.$childNode['name'].'\')">删除</a>'.$enabledStr.'</div>',
                ];
            }

            $enabledStr = "";
            $delStr = "";
            $editStr = '<a href="javascript:void(0)" onclick="doEdit(\''.$parentCategory['id'].'\')">编辑</a>';
            if(empty($pNode['nodes']) || $isAllChildNodeDisabled){
                $enabledStr = '<a href="javascript:void(0)" style="color:#22bb22;" onclick="doDisabled(\''.$parentCategory['id'].'\')">禁用</a>';
                if($parentCategory['status'] == 0){
                    $enabledStr = '<a href="javascript:void(0)" style="color:#bb2222;"  onclick="doEnabled(\''.$parentCategory['id'].'\')">启用</a>';
                }

                $delStr = '<a href="javascript:void(0)" onclick="doDel(\''.$parentCategory['id'].'\', \''.$parentCategory['name'].'\')">删除</a>';
            }

            $pNode['text'] = '<span id="cate-'.$parentCategory['id'].'-text">'.$parentCategory['name'].'</span>'.
                '<input id="cate-'.$parentCategory['id'].'-edit" type="text" name="cate-'.$parentCategory['id'].'-edit" value="'.$parentCategory['name'].
                '" style="display:none" />'.'<div class="category-del-li-div">'.$editStr.$delStr.$enabledStr.'</div>';

            $returnData []= $pNode;
        }
        $this->jsonReturn ($returnData);
    }

    public function getCategorys(){
        $pid = I("get.pid");
        $categorys = M("category")->where("pid=".$pid."")->field("id, name")->select();
        $this->jsonReturn ($categorys);
    }
    
    public function addcategory(){
        $categoryName = I('post.category_name');
        if(empty($categoryName)){
            $this->jsonReturn (false, '分类名称不能为空');
        }
        $parentCategoryVal = intval(I('post.parent_category'));
        if($parentCategoryVal < 0){
            $this->jsonReturn (false, "不正确的父级分类");
        }
        
        if($parentCategoryVal != 0){
            $parentCategory = M("category")->where(['id' => $parentCategoryVal])->select();
            if(empty($parentCategory)){
                $this->jsonReturn (false, "无效的父级分类");
            }
        }

        $pageCode = D('Pinyin', 'Helper')->toPinyin($categoryName);
        if(empty($pageCode)){
            $pageCode = $categoryName;
        }
        $categoryModel = M("category"); // 实例化User对象
        $ret = $categoryModel->data([
            'pid' => $parentCategoryVal,
            'name' => $categoryName,
            'pagecode' => $pageCode,
            'status' => 1,
            'createtime' => date("Y-m-d H:i:s"),
            'modifytime' => date("Y-m-d H:i:s"),
        ])->add();
        if($ret){
            $this->jsonReturn ($ret);
        }else{
            $this->jsonReturn (false, '新增失败');
        }

    }

    public function dodel(){
        $cid = I('post.cid');
        $categoryModel = M("category")->where(['id' => $cid])->select();
        if(empty($categoryModel)){
            $this->jsonReturn (false, "无法删除不存在的分类");
        }

        $childCategoryModels = M("category")->where(['pid' => $cid])->select();
        if(!empty($childCategoryModels)){
            $this->jsonReturn (false, "无法删除存在子分类的分类");
        }
        $ret = M("category")->where('id='.$cid)->delete();
        if($ret){
            $this->jsonReturn ($ret);
        }else{
            $this->jsonReturn (false, '删除失败');
        }
    }
    
    public function dodisable(){
        $cid = I('post.cid');
        $status = intval(I('post.status'));
        $categoryModel = M("category");
        $category = $categoryModel->where(['id' => $cid])->select();
        if(empty($category)){
            $this->jsonReturn (false, "无法禁用/启用不存在的分类");
        }

        $childCategorys = $categoryModel->where(['pid' => $cid, 'status' => 1])->select();
        if(!empty($childCategorys) && $status === 0){
            $this->jsonReturn (false, "无法禁用存在子分类的分类");
        }
        $ret = false;
        $categoryModel->startTrans();
        try{

            $data['status'] = $status;
            $data['modifytime'] = date('Y-m-d H:i:s');
            $ret = $categoryModel->where(['id' => $cid])->save($data);

            if($status === 1){
                $disableDchildCategorys = $categoryModel->where(['pid' => $cid, 'status' => 0, 'modifytime' => date('Y-m-d H:i:s')])->select();
                foreach($disableDchildCategorys as $disableDchildCategory){
                    if(!$categoryModel->where(['id' => $disableDchildCategory['id']])->save($data)){
                        throw new Exception("禁用失败");
                    }
                }

            }
            $categoryModel->commit();
        }catch (Exception $e){
            $categoryModel->rollback();
            $this->jsonReturn (false, $e->getMessage());
        }

        if($ret){
            $this->jsonReturn ($ret);
        }else{
            $categoryModel->rollback();
            $this->jsonReturn (false, '禁用失败');
        }
    }

    public function updatename(){
        $cid = I('post.cid');
        $name = I('post.name');
        if(empty($name)){
            $this->jsonReturn (false, "分类名称不能为空");
        }
        $categoryModel = M("category");
        $category = $categoryModel->where(['id' => $cid])->select();
        if(empty($category)){
            $this->jsonReturn (false, "无法修改不存在的分类");
        }
        $existNameCategory = $categoryModel->where(['pid' => $category['pid'], 'name' => $name])->select();
        if(!empty($existNameCategory)){
            $this->jsonReturn (false, "已存在该名称的分类");
        }

        $data['name'] = $name;
        $data['modifytime'] = date('Y-m-d H:i:s');
        $ret = $categoryModel->where(['id' => $cid])->save($data);

        if($ret){
            $this->jsonReturn ($ret);
        }else{
            $categoryModel->rollback();
            $this->jsonReturn (false, '修改名称失败');
        }

    }

}