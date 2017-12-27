<div class="panel panel-default col-sm-2">
    <div class="coom_title font_apple">
    </div>
    <div class="new_article_pic">
        <?php foreach($articles as $article) { ?>
        <dl title="<?php echo $article['title'] ?>">
            <dt class="a">
                <a href="<?php echo $article['link_url'] ?>" class="white" title="<?php echo $article['title'] ?>" target="_blank"><?php echo $article['title'] ?></a>
            </dt>
            <dd class="b"></dd>
            <dd class="c"><a href="<?php echo $article['link_url'] ?>" target="_blank">
                    <img alt="<?php echo $article['title'] ?>" src="<?php echo $article['main_img']['thumbs'][1] ?>"></a>
            </dd>
        </dl>
        <?php } ?>
    </div>
</div>