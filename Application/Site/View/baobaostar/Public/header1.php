<include file="Public:header-logo"/>
    <nav class="navbar navbar-default row col-sm-12" role="navigation">
        <div class="collapse navbar-collapse" id="navbar-collapse-01">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/">首页</a></li>
                <li><a href="#fakelink">百科知识</a></li>
                <li><a href="#fakelink">母婴优品汇</a></li>
                <li><a href="#fakelink">婆媳那点儿事</a></li>
            </ul>
            <div class="login-info-div">
                <?php if(!empty($loginInfo)){ ?>
                <span><?php echo $loginInfo['nickname'] ?></span>
                <a href="<?php echo site_url("customer/setting") ?>">设置</a> |
                <a href="javascript:void(0)" onclick="yygcms_logout('<?php echo "/site/login/logout/p/".base64_encode($_SERVER['REQUEST_URI']) ?>')">退出</a>
                <?php } ?>
            </div>
        </div><!-- /.navbar-collapse -->
    </nav><!-- /navbar -->