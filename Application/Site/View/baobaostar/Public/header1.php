<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>宝贝星</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="__PUBLIC__/site/{$Think.THEME_NAME}/css/base.css" rel="stylesheet">
    <script type="text/javascript" src="http://cdn.bootcss.com/jquery/2.2.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="__PUBLIC__/site/{$Think.THEME_NAME}/bootstrap/js/carousel.js"></script>
    <script type="text/javascript" src="__PUBLIC__/site/{$Think.THEME_NAME}/js/jquery.SuperSlide.2.1.1.js"></script>
    <script type="text/javascript" language="javascript" src="http://cdn.bootcss.com/bootbox.js/4.4.0/bootbox.js"></script>
    <script type="text/javascript" language="javascript" src="__PUBLIC__/common/js/common.js"></script>

    <style type="text/css">
    </style>

</head>
<body>
<header class="main-header" style="background-image: url('__PUBLIC__/site/{$Think.THEME_NAME}/images/top_bg2.png')">
    <div class="container">
        <div class="row col-sm-12">
            <div class="col-sm-12">
                <span><img src="__PUBLIC__/site/{$Think.THEME_NAME}/images/logo.png"/></span>
                <form class="navbar-form navbar-right col-sm-6 yyg-search-group" action="#" role="search">
                    <div class="form-group">
                        <div class="input-group-sm">
                            <input class="form-control" id="search-btn" type="search" placeholder="搜索">
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-sm-4 hidden-xs pull-right yyg-text-right">
                <a href="https://docs.golaravel.com/docs/5.4/" class="label label label-warning" target="_blank">备孕</a>
                <a href="https://docs.golaravel.com/docs/5.3/" class="label label-success" target="_blank">孕期</a>
                <a href="https://docs.golaravel.com/docs/5.2/" class="label label-success" target="_blank">分娩</a>
                <a href="https://docs.golaravel.com/docs/5.2/" class="label label-success" target="_blank">0-1岁</a>
                <a href="https://docs.golaravel.com/docs/5.2/" class="label label-success" target="_blank">1-3岁</a>
                <a href="https://docs.golaravel.com/docs/5.2/" class="label label-success" target="_blank">3-6岁</a>
            </div>

        </div>

    </div>
</header>
<div class="container">
    <nav class="navbar navbar-default row col-sm-12" role="navigation">
        <div class="collapse navbar-collapse" id="navbar-collapse-01">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/">首页</a></li>
                <li><a href="#fakelink">百科知识</a></li>
                <li><a href="#fakelink">母婴优品汇</a></li>
                <li><a href="#fakelink">婆媳那点儿事</a></li>
            </ul>
            <div class="login-info-div">
                <span><?php echo $loginInfo['nickname'] ?></span>
                <a href="javascript:void(0)">设置</a> |
                <a href="javascript:void(0)">退出</a>
            </div>
        </div><!-- /.navbar-collapse -->
    </nav><!-- /navbar -->