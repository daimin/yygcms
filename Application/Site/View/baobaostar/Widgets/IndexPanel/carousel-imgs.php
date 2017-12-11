<div class="row col-sm-12" style="padding: 0">
    <div id="carousel-example-generic" class="carousel slide col-sm-8" style="width: 70%;height: 320px;overflow: hidden;padding-left: 0;margin-left: 10px;" data-ride="carousel">
        <ol class="carousel-indicators">
            <?php foreach($articles as $idx=>$article){ ?>
            <li data-target="#carousel-example-generic" data-slide-to="<?php echo $idx ?>" class="<?php echo $idx==0 ? "active" : "" ?>"></li>
            <?php } ?>
        </ol>
        <div class="carousel-inner" role="listbox"   style="width: 100%">
            <?php foreach($articles as $idx=>$article){ ?>
            <div class="item<?php echo $idx==0 ? " active" : "" ?>">
                <a href="<?php echo $article['link_url'] ?>"><img style="width: 100%;" src="<?php echo $article['main_img']['path'] ?>" data-holder-rendered="true"></a>
            </div>
            <?php } ?>
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
        <?php foreach($articles as $idx=>$article){ ?>
        <dl onmouseover="moveCarouselIndi(<?php echo $idx?>)" onmouseout="">
            <dt class="font_apple">
                <a href="<?php echo $article['link_url'] ?>" title="<?php echo $article['title'] ?>" style=""><?php echo $article['title'] ?></a>
            </dt>
            <dd><?php echo $article['intro'] ?></dd>
        </dl>
        <?php } ?>
    </div>

</div>

<script type="text/javascript">
    $(function () {
        $('.carousel').carousel({
            interval: 5000
        });
    });

    

    function moveCarouselIndi(idx) {
        setTimeout(function () {
            $('.carousel').carousel(idx);
        }, 1000);

    }
</script>
