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
        $content = I("post.content");
        $cid = I("post.cid");

        if(empty($cid)){
            $this->jsonReturn("文章id不能为空");
        }

        if(empty($content)){
            $this->jsonReturn("请输入评论内容");
        }

        if(mb_strlen($content) < 4){
            $this->jsonReturn("请输入至少输入4个字符");
        }

        $articleContent = M("content")->where(['id' => $cid])->find();
        if(empty($articleContent)){
            $this->jsonReturn("找不到要评论的文章");
        }

        $content = strip_tags(stripslashes($content));



    }
    
}