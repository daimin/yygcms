<div class="panel panel-default col-sm-4 padding-left-none">
    <div class="coom_title font_apple">
        <div class="coom_h3">父母<span>学堂</span></div>
    </div>
    <div class="fumu_two_right">
        <ul class="fv_zx">
            <li>
                <a href="<?php echo $articles[0]['link_url'] ?>">
                    <img src="<?php echo $articles[0]['main_img']['thumbs'][1] ?>" alt="<?php echo $articles[0]['title'] ?>">
                </a>
                <br>
                <span><a href="<?php echo $articles[0]['link_url'] ?>"><?php echo $articles[0]['title'] ?></a></span>
            </li>
            <li>
                <a href="<?php echo $articles[1]['link_url'] ?>">
                    <img src="<?php echo $articles[1]['main_img']['thumbs'][1] ?>" alt="<?php echo $articles[1]['title'] ?>">
                </a>
                <br>
                <span><a href="<?php echo $articles[1]['link_url'] ?>"><?php echo $articles[1]['title'] ?></a></span>
            </li>
        </ul>
        <ul class="fv_td">
            <?php
            $subArticles = array_splice($articles, 2);
            foreach($subArticles as $article){ ?>
            <li><a href="<?php echo $article['link_url'] ?>" title="<?php echo $article['title'] ?>" target="_blank"><?php echo $article['title'] ?></a></li>
            <?php } ?>
        </ul>
    </div>
</div>