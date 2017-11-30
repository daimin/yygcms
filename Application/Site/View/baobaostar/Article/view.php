<include file="Public:header1" />

    <div class="row col-sm-9">
        <div class="row col-sm-12" style="padding: 0;">
            <div class="breadCrumbs">
                当前位置：<a href="/">资讯首页 </a>
                › <a href="http://news.ci123.com/category/news" title="查看 育儿动态 中的全部文章" rel="category tag">育儿动态</a>
                › <a href="http://news.ci123.com/article/111561.html">大力摇晃宝宝：多的是你不知道的坏处</a>
            </div>
        </div>
        <div class="post col-sm-12" id="post">
            <h1 class="postTitle"><?php echo $article['title'] ?></h1>
            <div class="postInfo">
                <span>发布于<a href="javascript:void(0)"><?php echo $article['createtime'] ?></a></span>
                <span>标签：</span>
                <span>作者：<?php echo $article['author']['name'] ?></span>
            </div>
                <div class="row col-sm-12 entry group">
                    <?php echo $article['content'] ?>
                </div>

        </div>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <!-- JiaThis Button BEGIN -->
        <div class="jiathis_style">
            <span class="jiathis_txt">分享到：</span>
            <a class="jiathis_button_qzone">QQ空间</a>
            <a class="jiathis_button_tsina">新浪微博</a>
            <a class="jiathis_button_tqq">腾讯微博</a>
            <a class="jiathis_button_weixin">微信</a>
            <a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis" target="_blank">更多</a>
            <a class="jiathis_counter_style"></a>
        </div>
        <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>
        <!-- JiaThis Button END -->
<!--        <!-- UY BEGIN -->
<!--        <div id="uyan_frame"></div>-->
<!--        <script type="text/javascript" src="http://v2.uyan.cc/code/uyan.js"></script>-->
<!--        <!-- UY END -->
        <include file="Widgets:comment-box" />
    </div>
    <div class="row col-sm-3" style="margin: 0;padding: 0;">
        <include file="Widgets:login-panel" />
        <div class="panel panel-default col-sm-12">
            {:W('ArticlesPanel/relates', [$article])}
            {:W('ArticlesPanel/News')}
            {:W('ArticlesPanel/Hots')}
            </div>

        </div>

    </div>
</div>

<include file="Public:footer1" />
</body>
</html>