<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/12/27
 * Time: 20:50
 */

namespace Common\Service;


class ContentService
{
    public function getContentByIndexDisplay($dsid){
        return D("Content")->field('id, title, category_id, topnum')->where(["status" => 1, "indexdisplay" => $dsid])->order("topnum desc, `order`,`createtime` desc")->select();
    }

}