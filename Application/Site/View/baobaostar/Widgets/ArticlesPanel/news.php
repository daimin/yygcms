<div class="panel panel-default col-sm-12">
    <div class="panel side-panel "  style="margin-top:0px;">
        <div class="coom_title font_apple">
            <div class="coom_h3"><a href="javascript:void(0)" target="_blank">最新<span>文章</span></a></div>
        </div>
        <ul>
            <?php
            $labelClss = ['label-danger', 'label-warning', 'label-info'];
            foreach($newArticles as $idx=>$article){
                $lableClass = isset($labelClss[$idx]) ? $labelClss[$idx] : 'label-default';
                ?>
                <li>
                    <span class="label <?php echo $lableClass ?>"><?php echo $idx+1 ?></span><a href="<?php echo $article['link_url'] ?>"><?php echo $article['title'] ?></a>
                </li>
            <?php }?>
        </ul>
    </div>