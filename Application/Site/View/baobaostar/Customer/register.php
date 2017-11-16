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
            宝宝星 › 用户注册
        </div>
        <div class="alert alert-warning" role="alert" id="alert-setting-profile" style="display: none"></div>
        <div class="inner">
            <form method="post" action="<?php echo site_url('/Customer/saveProfile') ?>" onsubmit="return submitProfileForm(this);">
                <table cellpadding="5" cellspacing="0" border="0" width="100%" class="setting-table">
                    <tbody>
                    <tr>
                        <td width="120" align="right">昵称</td>
                        <td width="auto" align="left">
                            <input type="text" class="sl" name="nickname" value="" autocomplete="off" onblur="checkNickName(this)">
                            <span class="alert alert-danger profile-error" ></span>
                        </td>
                    </tr>

                    <tr>
                        <td width="120" align="right">电子邮件</td>
                        <td width="auto" align="left"><input type="text" class="sl" name="email" value="" autocomplete="off" onblur="checkEmail(this)">
                        <span class="alert alert-danger profile-error" ></span>
                        </td>
                    </tr>
                    <tr>
                        <td width="120" align="right">密码</td>
                        <td width="auto" align="left"><input type="password" class="sl" name="password" value="" autocomplete="off">
                            <span class="alert alert-danger profile-error" ></span>
                        </td>
                    </tr>
                    <tr>
                        <td width="120" align="right"><span class="profile-required">*</span>验证码</td>
                        <td width="auto" align="left">
                            <img src='__URL__/verifyCode' id="verifyCodeImg" border="none" style="margin-bottom: 3px;" onclick="refreshVeryCode()" /> <br/>
                            <input type="text" class="sl" name="verifyCode" value="" autocomplete="off" style="width: 155px">
                            <span class="alert alert-danger profile-error" ></span>
                        </td>
                    </tr>
                    <tr>
                        <td width="120" align="right"></td>
                        <td width="auto" align="left"><input type="submit"  class="super normal button" value="注册"></td>
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
        }
    });

    function showWrongMsg(id, message){
        $(id).html(message);
        $(id).show();
        return false;
    }

    
    function changePassword(oform) {
        var password_current = $.trim(oform.password_current.value);
        var password_new = $.trim(oform.password_new.value);
        var password_again = $.trim(oform.password_again.value);

        if(password_current == ''){
            return showWrongMsg("#alert-change-password","当前密码不能为空");
        }

        if(password_new == ''){
            return showWrongMsg("#alert-change-password","新密码不能为空");
        }

        if(password_again == ''){
            return showWrongMsg("#alert-change-password","再次输入新密码不能为空");
        }

        if(password_new.length < 6){
            return showWrongMsg("#alert-change-password","新密码不能小于6个字符");
        }

        if(password_new != password_again){
            return showWrongMsg("#alert-change-password","再次输入新密码不正确");
        }

        var args = {
            "password_current": password_current,
            "password_new": password_new,
            "password_again": password_again
        };
        $.post(oform.action,args,function(data){
            if(typeof data != 'object'){
                data = JSON.parse(data);
            }
            if(data['errCode'] != 0){
                yyg_check_login(data);
                return showWrongMsg("#alert-change-password",data['errMsg']);
            }else{
                toastr.success("密码修改成功");
                oform.password_current.value = '';
                oform.password_new.value = '';
                oform.password_again.value = '';
                $('#alert-change-password').hide();
            }

        });

        return false;
    }

    function uploadHeadImg(){
        $.ajax({
            url: '<?php echo site_url('customer/uploadAvatar')?>',
            type: 'POST',
            cache: false,
            data: new FormData($('#uploadForm')[0]),
            processData: false,
            contentType: false
        }).done(function(data) {
            if(typeof data != 'object'){
                data = JSON.parse(data);
            }
            if(data['errCode'] != 0){
                yyg_check_login(data);
                return showWrongMsg("#alert-upload-avatar",data['errMsg']);
            }else{
                toastr.success("上传成功");
                $('#alert-upload-avatar').hide();
                $.each(data['data'], function(it){
                    $("#" + it + "-head-img").attr('src', data['data'][it]);
                    console.log(data['data'][it]);
                });
            }
        }).fail(function(res) {});
    }

    function checkNickName(thiz){
        clearProfileError(thiz);
        var value = $.trim(thiz.value);
        if(value == ''){
            showProfileError(thiz, '昵称不能为空');
            return false;
        }
        doCheckField(thiz, '<?php echo site_url("customer/checkNickName")?>', 'nickname');
    }

    function checkEmail(thiz){
        clearProfileError(thiz);
        var value = $.trim(thiz.value);
        if(value == ''){
            showProfileError(thiz, '邮箱地址不能为空');
            return false;
        }
        var Regex = /^(?:\w+\.?)*\w+@(?:\w+)*\.\w+$/;
        if (!Regex.test(value)){
            showProfileError(thiz, '邮箱地址格式不正确');
            return false;
        }
        doCheckField(thiz, '<?php echo site_url("customer/checkEmail")?>', 'email');
    }

    function checkPhone(thiz){
        clearProfileError(thiz);
        var phone = $.trim(thiz.value);
        if(!(/^1(3|4|5|7|8)\d{9}$/.test(phone))){
            showProfileError(thiz, '手机号码格式不正确');
            return false;
        }
    }

    function doCheckField(thiz, url, fieldname){
        var data = {'uid' : '<?php echo $loginInfo['id'] ?>'};
        data[fieldname] = $.trim(thiz.value);
        $.get(url, data, function (result) {
            if(result['errCode'] < 0){
                showProfileError(thiz, result['errMsg']);
            }
        });
    }

    function showProfileError(thiz, errMsg){
        var errdiv = $(thiz).parent().find(".profile-error");
        errdiv.html(errMsg);
        errdiv.show();
    }
    function clearProfileError(thiz){
        var errdiv = $(thiz).parent().find(".profile-error");
        console.log(errdiv);
        errdiv.html("");
        errdiv.hide();
    }

    function submitProfileForm(form){
        $.post(form.action, $(form).serialize(), function(data){
            if(typeof data != 'object'){
                data = JSON.parse(data);
            }
            if(data['errCode'] != 0){
                yyg_check_login(data);
                return showWrongMsg("#alert-setting-profile", data['errMsg']);
            }else{
                toastr.success("保存成功");
                $('#alert-setting-profile').hide();
            }
        });
        return false;
    }


</script>

<include file="Public:footer1"/>
</body>
</html>