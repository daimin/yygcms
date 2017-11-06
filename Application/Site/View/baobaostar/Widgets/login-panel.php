<?php if(empty($loginInfo)){ ?>
<div class="panel panel-default col-sm-12 side-panel" style="margin-bottom: 12px">
    <div class="coom_title font_apple">
        <div class="coom_h3"><a href="http://www.qqbaobao.com/shidian/" target="_blank">用户<span>登录</span></a></div>
    </div>
    <div id="login-panel-error" style="float: none"><span class="glyphicon glyphicon-info-sign"></span></div>
    <form class="login-form form-horizontal" action="<?php echo site_url('login/login') ?>" onsubmit="return checkAndSubmitLogin(this)">
        <div class="login-form-dev">
            <div class="form-group">
                <label for="exampleInputEmail1" class="col-sm-2 control-label">邮箱</label>
                <div class="col-sm-10">
                <input type="email" name="email" class="form-control input-sm" id="exampleInputEmail1" placeholder="Email" autocomplete="off">
                </div>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1" class="col-sm-2 control-label">密码</label>
                <div class="col-sm-10">
                <input type="password" name="password" class="form-control input-sm" id="exampleInputPassword1" placeholder="Password" autocomplete="off">
                </div>
            </div>
        </div>
        <div class="form-group login-form-btn">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-primary">登录</button>
            </div>
        </div>
    </form>
    <div class="login-link">
        <label><input type="checkbox"> 记住密码</label> |
        <a href="javascript:void(0)">用户注册</a> |
        <a href="javascript:void(0)">忘记密码</a>
    </div>

</div>

<script type="text/javascript">
    function checkAndSubmitLogin(formboj){
        var emailValue = $.trim(formboj.email.value);
        var passwordValue = $.trim(formboj.password.value);
        if(emailValue == ''){
            showLoginPanelError('请输入您注册的邮箱地址');
            return false;
        }

        if(passwordValue == ''){
            showLoginPanelError('请输入您的登录密码');
            return false;
        }

        var pattern= /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
        var strEmail = pattern.test(emailValue);
        if (!strEmail)
        {
            showLoginPanelError('请输入有效的邮箱地址');
            return false;
        }


            $.post(formboj.action, { email: emailValue, password: passwordValue},
            function(data){
                if(typeof data != 'object'){
                    data = JSON.parse(data);
                }
                if(data['errCode'] !== 0){
                    showLoginPanelError(data['errMsg']);
                }else{
                    window.location.reload();
                }
            });

        return false;
    }

    function showLoginPanelError(msg){
        $("#login-panel-error span").html(msg);
        $("#login-panel-error").show();
    }
</script>
<?php } ?>