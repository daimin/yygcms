<?php
namespace Site\Controller;
use Hashids\Hashids;

class ArticleController extends BaseController {

    static $imglist = ['hold住', '不要', '偷笑', '冰冻', '加油', '发火', '发狂', '可怜', '叹气', '吃东西', '吃惊', '吐', '呆萌', '哭', '囧', '奸诈', '好吃', '害羞', '感冒', '戴眼镜',
        '挖鼻孔', '晕', '流口水', '流汗', '流眼泪', '点赞', '烧香', '狂笑', '病了', '研究', '示爱', '笑', '调皮', '酷', '闭嘴', '阴险'];

    public function view($id){
        $hashids = new Hashids();

        $artRet = $hashids->decode($id);
        if(empty($artRet)){
            $this->error("找不到页面");
        }
        $artId = $artRet[0];
        $articleContent = M("content")->where(['id' => $artId])->find();
        $this->assign('article', $articleContent);
        $this->assign('imglist', self::$imglist);
    	$this->display();
    }

    public function addComment(){
        $loginInfo = $this->getLoginInfo();
        if(empty($loginInfo)){
            $this->jsonReturn(false, "请登录后再评论！");
        }

        $content = I("post.content");
        $cid = I("post.cid");

        if(empty($cid)){
            $this->jsonReturn(false, "文章id不能为空");
        }

        if(empty($content)){
            $this->jsonReturn(false, "请输入评论内容");
        }

        if(mb_strlen($content) < 4){
            $this->jsonReturn(false, "请输入至少输入4个字符");
        }

        $articleContent = M("content")->where(['id' => $cid])->find();
        if(empty($articleContent)){
            $this->jsonReturn(false, "找不到要评论的文章");
        }

        $content = remove_xss($content);
        $sensitives = M("sensitive")->select();
        foreach($sensitives as $sensitive){
            $word = $sensitive['word'];
            if(mb_strpos($word, $content) !== false){
                $this->jsonReturn(false, "评论内容包含敏感词汇，不合法！");
            }
        }


        $data = [
            'content' => $content,
            'cid' => $cid,
            'uid' => $loginInfo['id'],
            'pid' => 0,
            'createtime' => date('Y-m-d H:i:s'),
            'modifytime' => date('Y-m-d H:i:s'),
        ];

        $ret = M('comment')->data($data)->add();
        if($ret){
            $this->jsonReturn(1);
        }else{
            $this->jsonReturn(false, '添加评论失败');
        }

    }
    
}