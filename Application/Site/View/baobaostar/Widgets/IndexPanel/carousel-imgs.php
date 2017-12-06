<div class="row col-sm-12" style="padding: 0">
    <div id="carousel-example-generic" class="carousel slide col-sm-8" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
            <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item">
                <img src="__PUBLIC__/site/{$Think.THEME_NAME}/images/pic3207_1483407932.jpg" data-holder-rendered="true">
            </div>
            <div class="item active">
                <img src="__PUBLIC__/site/{$Think.THEME_NAME}/images/pic3484_1500269727.jpg" data-holder-rendered="true">
            </div>
            <div class="item">
                <img src="__PUBLIC__/site/{$Think.THEME_NAME}/images/pic3510_1501817036.jpg" data-holder-rendered="true">
            </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div class="panel panel-default col-sm-4 tuijian" style="padding-right: 0">
        <?php foreach($articles as $article){ ?>
        <dl>
            <dt class="font_apple">
                <a href="<?php echo $article['link_url'] ?>" title="<?php echo $article['title'] ?>" target="_blank" style=""><?php echo $article['title'] ?></a>
            </dt>
            <dd><?php echo $article['intro'] ?></dd>
        </dl>
        <?php } ?>
    </div>

</div>

