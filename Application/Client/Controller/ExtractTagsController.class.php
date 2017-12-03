<?php
/**
 * Created by PhpStorm.
 * User: daim01
 * Date: 2017/9/11
 * Time: 17:42
 */

namespace Client\Controller;

use Common\Model\ContentModel;
use PHPHtmlParser\Dom;


class ExtractTagsController extends BaseController {

    public function handle(){
        /** @var  $contentD ContentModel */
        $contentD = D("Content");

        $contents = $contentD->where('1=1')->select();
        /** @var  $wordAnalysisService \Common\Service\WordAnalysisService */
        $wordAnalysisService = D("Common/WordAnalysis", "Service");
        foreach($contents as $content){
            $tags = $wordAnalysisService->analysis($content['content']);
            if(count($tags) > 5){
                $tags = array_filter(array_slice($tags, 0, 5), function ($it){
                    return mb_strlen($it) < C("__YYG_TAG_SIZE__");
                });
            }
            $this->printColor("====");
            $contentD->addTags($content['id'], implode(',', $tags));
        }

    }


}