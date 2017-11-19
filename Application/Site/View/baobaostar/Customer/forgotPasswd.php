<include file="Public:header1"/>
<link href="http://cdn.bootcss.com/bootstrap-datepicker/1.7.0/css/bootstrap-datepicker.min.css" type="text/css" rel="stylesheet">
<link href="https://cdn.bootcss.com/toastr.js/2.1.0/css/toastr.min.css" rel="stylesheet">
<script type="text/javascript" language="javascript" src="http://cdn.bootcss.com/bootstrap-datepicker/1.7.0/js/bootstrap-datepicker.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap-datepicker/1.7.0-RC3/locales/bootstrap-datepicker.zh-CN.min.js"></script>
<script src="https://cdn.bootcss.com/toastr.js/2.1.0/js/toastr.min.js"></script>
<style>
    .toast-middle-center {
        top: 35%;
        right: 50%;
        width: 300px;
        margin-left: auto;
        margin-right: auto;
    }
</style>
<div id="setting-Main" >

    <div class="setting-box">
        <div class="cell">
            宝宝星 › 忘记密码
        </div>
        <div class="alert alert-info" role="alert">
            输入您的昵称和电子邮箱地址，稍后会将重置后的密码发到您的邮箱。
        </div>
        <div class="alert alert-warning" role="alert" style="display: none" id="forgot-passwd-alert">
        </div>
        <div class="inner">
            <form method="post" action="<?php echo site_url('/Customer/submitForgotPasswd') ?>" onsubmit="return submitForgotPasswdForm(this);">
                <table cellpadding="5" cellspacing="0" border="0" width="100%" class="setting-table">
                    <tbody>
                    <tr>
                        <td width="120" align="right">昵称</td>
                        <td width="auto" align="left">
                            <input style="display:none" name="nickname" type="text"><!-- for disable autocomplete on chrome -->
                            <input type="text" class="sl" name="nickname" value="" autocomplete="off" onblur="checkNickName(this)" autofocus>
                            <span class="alert alert-danger profile-error" ></span>
                        </td>
                    </tr>

                    <tr>
                        <td width="120" align="right">电子邮件</td>
                        <td width="auto" align="left">
                            <input style="display:none" name="email" type="text"><!-- for disable autocomplete on chrome -->
                            <input type="text" class="sl" name="email" value="" autocomplete="off" onblur="checkEmail(this)">
                        <span class="alert alert-danger profile-error" ></span>
                        </td>
                    </tr>

                    <tr>
                        <td width="120" align="right"><span class="profile-required">*</span>验证码</td>
                        <td width="auto" align="left">
                            <img src='__URL__/verifyCode' id="verifyCodeImg" border="none" style="margin-bottom: 3px;" onclick="refreshVeryCode()" /> <br/>
                            <input type="text" class="sl" name="verifyCode" value="" autocomplete="off" style="width: 155px" onblur="checkVerifyCode(this)">
                            <span class="alert alert-danger profile-error" ></span>
                        </td>
                    </tr>
                    <tr>
                        <td width="120" align="right"></td>
                        <td width="auto" align="left"><input type="submit"  class="super normal button" value="提交"></td>
                    </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
</div>
</div>

<script>
    $(function () {
        $('#bbbirthday').datepicker({
            format: "yyyy-mm-dd",
            autoclose: true,
            language: 'zh-CN'
        });

        toastr.options = {
            "closeButton": false,
            "debug": false,
            "newestOnTop": false,
            "progressBar": false,
            "positionClass": "toast-middle-center",
            "preventDuplicates": false,
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "2000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        };

    });

    function showWrongMsg(id, message){
        $(id).html(message);
        $(id).show();
        return false;
    }


    function checkNickName(thiz){
        clearProfileError(thiz);
        var value = $.trim(thiz.value);
        if(value == ''){
            showRegError(thiz, '昵称不能为空');
            return false;
        }
    }

    function checkEmail(thiz){
        clearProfileError(thiz);
        var value = $.trim(thiz.value);
        if(value == ''){
            showRegError(thiz, '邮箱地址不能为空');
            return false;
        }
        var Regex = /^(?:\w+\.?)*\w+@(?:\w+)*\.\w+$/;
        if (!Regex.test(value)){
            showRegError(thiz, '邮箱地址格式不正确');
            return false;
        }
    }


    function checkVerifyCode(thiz) {
        clearProfileError(thiz);
        var value = $.trim(thiz.value);
        if(value == ''){
            showRegError(thiz, '验证码不能为空');
            return false;
        }
    }

    function doCheckField(thiz, url, fieldname){
        var data = {'uid' : '<?php echo $loginInfo['id'] ?>'};
        data[fieldname] = $.trim(thiz.value);
        $.get(url, data, function (result) {
            if(result['errCode'] < 0){
                showRegError(thiz, result['errMsg']);
            }
        });
    }

    function showRegError(thiz, errMsg){
        var errdiv = $(thiz).parent().find(".profile-error");
        errdiv.html(errMsg);
        errdiv.show();
    }
    function clearProfileError(thiz){
        var errdiv = $(thiz).parent().find(".profile-error");
        errdiv.html("");
        errdiv.hide();
    }

    function submitForgotPasswdForm(form){
        $.post(form.action, $(form).serialize(), function(data){
            if(typeof data != 'object'){
                data = JSON.parse(data);
            }
            if(data['errCode'] != 0){
                refreshVeryCode();
                return showWrongMsg("#forgot-passwd-alert", data['errMsg']);
            }else{
                toastr.success("提交成功");
                $('#forgot-passwd-alert').hide();
            }
        });
        return false;
    }

    function refreshVeryCode(){
        var verifyCodeImg = document.getElementById("verifyCodeImg");
        verifyCodeImg.src = "__URL__/verifyCode/" + (new Date().getTime());
    }

</script>

<include file="Public:footer1"/>
</body>
</html>