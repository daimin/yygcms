<?php
// 本类由系统自动生成，仅供测试用途
class LookUsAction extends BaseAction {
    
    
    public function index(){
    	$this->display();
    }
    
    public function sigemianfei(){
        $this->display();
    }
    
    public function aboutus(){
        $contentM = M("Content");
        $aboutusContent = $contentM->where("`type`='aboutus' and `status`='1'")->limit(1)->find();
        $this->assign("aboutus", $aboutusContent);
        $this->display();
    }
    
     public function contactus(){
        $contentM = M("Content");
        $contactusContent = $contentM->where("`type`='contactus' and `status`='1'")->limit(1)->find();
        $this->assign("contactus", $contactusContent);
        $this->display();
     }
     
     public function rongyu(){
        $contentM = M("Content");
        $rongyuContent = $contentM->where("`type`='rongyu' and `status`='1'")->limit(1)->find();
        $this->assign("rongyu", $rongyuContent);
        $this->display();
     }
     
     public function zhaopin(){
        $contentM = M("Content");
        $zhaopinContent = $contentM->where("`type`='zhaopin' and `status`='1'")->limit(1)->find();
        $this->assign("zhaopin", $zhaopinContent);
        $this->display();
     }
     
     public function zhinan(){
        $contentM = M("Content");
        $zhinanContent = $contentM->where("`type`='zhinan' and `status`='1'")->limit(1)->find();
        $this->assign("zhinan", $zhinanContent);
        $this->display();
     }
     
     /**
      * 订单预订
      */
     public function yuding(){
         if($this->isGet()){
            $styleCfg = C("Design_Styles");
            $this->assign("styles", $styleCfg);
            $this->display();
        }else{
            $area = intval(I("area"));
            $shi = intval(I("shi"));
            $ting = intval(I("ting"));
            $wei = intval(I("wei"));
            $city = I("city");
            $xiaoqu = I("xiaoqu");
            $style = I("style");
            $name = I("name");
            $sex = I("sex");
            $phone = I("phone");
            $yusuan = I("yusuan");
            //----------------------
            $yudingM = M("yuding");
            //----------------------------
            $data['area'] = $area;
            $data['shi'] = $shi;
            $data['ting'] = $ting;
            $data['wei'] = $wei;
            $data['city'] = $city;
            $data['xiaoqu'] = $xiaoqu;
            $data['style'] = $style;
            $data['name'] = $name;
            $data['sex'] = $sex;
            $data['phone'] = $phone;
            $data['yusuan'] = $yusuan;
            $data['created'] = date("Y-m-d H:i:s");
            $res = $yudingM->add($data);
            if($res){
                $this->success("恭喜！预订成功。");
            }else{
                $this->error("对不起！预订失败了。");
            }
            
        }
     }
     
     public function news(){
     	import('ORG.Util.Page');// 导入分页类

     	$contentM = M("Content");
     	$map['status']  = array('eq', 1);
     	$map['type']  = array('eq', 'dnews');
     	
     	$opts = $this->getOptions();
     	
     	$count      = $contentM->where($map)->count();// 查询满足要求的总记录数
     	$Page       = new Page($count, 10);// 实例化分页类 传入总记录数和每页显示的记录数
     	
     	$show       = $Page->show();// 分页显示输出
     	// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
     	$list = $contentM->where($map)->order('`order`,`createtime` desc')->limit($Page->firstRow.','.$Page->listRows)->select();

     	$this->assign('list', $list);// 赋值数据集
     	$this->assign('page',$show);// 赋值分页输出
     	$this->display();
     }
     
     public function newsdetail($nid){
     	$contentM = M("Content");
     	$newContent = $contentM->where("`type`='dnews' and `status`='1'")->limit(1)->find($nid);
     	$this->assign('new', $newContent);
     	$this->display();
     }
     
     public function msgboard(){
     	import('ORG.Util.Page');// 导入分页类
     	$msgboardM = M("msgboard");
     	
     	$map            = array();
     	$opts           = $this->getOptions();
     	$count          = $msgboardM->where($map)->count();// 查询满足要求的总记录数
     	$Page           = new Page($count, 10);// 实例化分页类 传入总记录数和每页显示的记录数
     	$show           = $Page->show();// 分页显示输出
     	$list           = $msgboardM->where($map)->order('`ctime` desc')->limit($Page->firstRow.','.$Page->listRows)->select();
     	$this->assign('list', $list);// 赋值数据集
     	$this->assign('page',$show);// 赋值分页输出
     	$this->display();
     }
     
     public function  leavemsg(){
     	$contentM = M("msgboard");
     	$data = array();
     	$data['name']    = I("cname");
     	$data['contact'] = I("contact");
     	$msg_content = str_replace(array("\n", "\r\n"), array('<br/>', '<br/>'), I("msg"));
     	$data['content'] = $msg_content;
     	$data['ctime']   = date("Y-m-d H:i:s");
     	$contentM->add($data);
     	$this->success("恭喜！留言成功。");
     }
     
     public function jiazhuangketang()
     {
     	$this->display();
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
     
     public function jiazhuangketangtype($type)
     {
     	import('ORG.Util.Page');// 导入分页类
     	
     	if(empty($type) || !isset($this->MP_KETANGS_TYPES[$type]))
     	{
     		exit();
     	}
     	
     	$contentM = M("Content");
     	$map['status']  = array('eq', 1);
     	$map['type']  = array('eq', $type);
     	
     	$opts = $this->getOptions();
     	
     	$count      = $contentM->where($map)->count();// 查询满足要求的总记录数
     	$Page       = new Page($count, 10);// 实例化分页类 传入总记录数和每页显示的记录数
     	
     	$show       = $Page->show();// 分页显示输出
     	// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
     	$list = $contentM->where($map)->order('`order`,`createtime` desc')->limit($Page->firstRow.','.$Page->listRows)->select();
     	
     	$this->assign('list', $list);// 赋值数据集
     	$this->assign('page',$show);// 赋值分页输出
     	$this->assign('type_detail', $this->MP_KETANGS_TYPES[$type]);
     	$this->display();
     }
     
     public function jiazhuangketangtypedetail($jid){
     	$contentM = M("Content");
     	$newContent = $contentM->where("`status`='1'")->limit(1)->find($jid);
     	$this->assign('cont', $newContent);
     	$this->assign('type_detail', $this->MP_KETANGS_TYPES[$newContent['type']]);
     	$this->display();
     }
    
}