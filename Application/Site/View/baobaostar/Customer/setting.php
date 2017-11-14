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
            宝宝星 › 个人设置
        </div>
        <div class="alert alert-warning" role="alert" id="alert-setting-profile" style="display: none"></div>
        <div class="inner">
            <form method="post" action="/settings">
                <table cellpadding="5" cellspacing="0" border="0" width="100%" class="setting-table">
                    <tbody>
                    <tr>
                        <td width="120" align="right"><span class="profile-required">*</span>昵称</td>
                        <td width="auto" align="left">
                            <input type="text" class="sl" name="nickname" value="<?php echo $loginInfo['nickname'] ?>" autocomplete="off" onblur="checkNickName(this)">
                            <span class="alert alert-danger profile-error" ></span>
                        </td>
                    </tr>

                    <tr>
                        <td width="120" align="right">手机号</td>
                        <td width="auto" align="left"><input type="text" class="sl" name="phone" value="<?php echo $loginInfo['phone'] ?>" autocomplete="off" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                                                             onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'0')}else{this.value=this.value.replace(/\D/g,'')}"></td>
                    </tr>

                    <tr>
                        <td width="120" align="right"><span class="profile-required">*</span>电子邮件</td>
                        <td width="auto" align="left"><input type="text" class="sl" name="email" value="daiming253685@126.com" autocomplete="off" onblur="checkEmail(this)">
                        <span class="alert alert-danger profile-error" ></span>
                        </td>
                    </tr>

                    <tr>
                        <td width="120" align="right">年龄</td>
                        <td width="auto" align="left">
                            <input type="text" class="sl" name="age" value="<?php echo $loginInfo['age'] ?>"  autocomplete="off" style="width: 48px"  onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                                                             onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'0')}else{this.value=this.value.replace(/\D/g,'')}"></td>
                    </tr>
                    <tr>
                        <td width="120" align="right">性别</td>
                        <td width="auto" align="left">
                            <label><input type="radio" name="sex" value="1" <?php echo ($loginInfo['sex'] == 1 || $loginInfo['sex'] == '' ? ' checked' : '') ?>>男</label>
                            <label><input type="radio" name="sex" value="0" <?php echo ($loginInfo['sex'] == 0 ? ' checked' : '') ?>>女</label>
                        </td>
                    </tr>
                    <tr>
                        <td width="120" align="right">宝宝生日</td>
                        <td width="auto" align="left"><input type="text" id="bbbirthday" class="sl" name="bbbirthday" value="<?php echo $loginInfo['bbbirthday'] ?>" autocomplete="off"></td>
                    </tr>
                    <tr>
                        <td width="120" align="right">孕育阶段</td>
                        <td width="auto" align="left">
                            <!--  1备孕，2孕早期，3孕中期，4孕晚期，5宝宝0-1岁，6宝宝1-3岁，7宝宝3-6岁，8宝宝6岁以上-->
                            <select name="yy-stage" class="sl" >
                                <option value="1" <?php echo ($loginInfo['stage'] == 1 ? 'selected' : '') ?>>备孕</option>
                                <option value="2" <?php echo ($loginInfo['stage'] == 2 ? 'selected' : '') ?>>孕早期</option>
                                <option value="3" <?php echo ($loginInfo['stage'] == 3 ? 'selected' : '') ?>>孕中期</option>
                                <option value="4" <?php echo ($loginInfo['stage'] == 4 ? 'selected' : '') ?>>孕晚期</option>
                                <option value="5" <?php echo ($loginInfo['stage'] == 5 ? 'selected' : '') ?>>宝宝0-1岁</option>
                                <option value="6" <?php echo ($loginInfo['stage'] == 6 ? 'selected' : '') ?>>宝宝1-3岁</option>
                                <option value="7" <?php echo ($loginInfo['stage'] == 7 ? 'selected' : '') ?>>宝宝3-6岁</option>
                                <option value="8" <?php echo ($loginInfo['stage'] == 8 ? 'selected' : '') ?>>宝宝6岁以上</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td width="120" align="right">所在地址</td>
                        <td width="auto" align="left"><textarea class="ml"  name="address" cols="40" style="resize: none;height: 48px"><?php echo $loginInfo['address'] ?></textarea></td>
                    </tr>
                    <tr>
                        <td width="120" align="right">个人简介</td>
                        <td width="auto" align="left"><textarea class="ml" name="intro" rows="5" cols="40" style="resize: none"><?php echo $loginInfo['intro'] ?></textarea></td>
                    </tr>

                    <tr>
                        <td width="120" align="right"></td>
                        <td width="auto" align="left"><input type="submit"  class="super normal button" value="保存设置"></td>
                    </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
    <div class="setting-sep20"></div>
    <div class="setting-box">
        <div class="cell">
            头像上传
        </div>
        <div class="alert alert-warning" role="alert" id="alert-upload-avatar" style="display: none"></div>
        <form id="uploadForm" enctype="multipart/form-data">
            <input type="hidden" name="ajax">
            <table class="setting-table" cellpadding="5" cellspacing="0" border="0" width="100%">
                <tbody>
                <tr>
                    <td width="120" align="right">当前头像</td>
                    <td width="auto" align="left"><img id="big-head-img" src="<?php echo $loginInfo['headimgs']['big'] ?>" class="avatar" border="0" align="default">
                        &nbsp; <img id="middle-head-img" src="<?php echo $loginInfo['headimgs']['middle'] ?>" class="avatar" border="0" align="default"> &nbsp;
                        <img id="small-head-img" src="<?php echo $loginInfo['headimgs']['small'] ?>" class="avatar" border="0" align="default"></td>
                </tr>
                <tr>
                    <td width="120" align="right"></td>
                    <td width="auto" align="left">
                        <input type="file" name="file" class="super normal button" value="选择文件">
                        <span style="color:#aaa;display: block;margin-bottom: 6px;font-size:12px;margin-top: 3px;">支持 500K 以内的 PNG / JPG / GIF 文件</span>
                        <input type="button" onclick="uploadHeadImg()" class="super normal button" value="开始上传">
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
    </div>
    <div class="setting-sep20"></div>
    <div class="setting-box">
        <div class="cell">
            更改密码
        </div>
        <div class="inner">
            <div class="alert alert-warning" role="alert" id="alert-change-password" style="display: none"></div>
            <form method="post" action="<?php echo site_url('/Customer/changePassword') ?>" autocomplete="off" onsubmit="return changePassword(this)">
                <input type="hidden" name="ajax">
                <table class="setting-table" cellpadding="5" cellspacing="0" border="0" width="100%">
                    <tbody>
                    <tr>
                        <td width="120" align="right">当前密码</td>
                        <td width="auto" align="left"><input type="password" class="sl" name="password_current" value="" autocomplete="off"></td>
                    </tr>
                    <tr>
                        <td width="120" align="right">新密码</td>
                        <td width="auto" align="left"><input type="password" class="sl" name="password_new" value="" autocomplete="off"></td>
                    </tr>
                    <tr>
                        <td width="120" align="right">再次输入新密码</td>
                        <td width="auto" align="left"><input type="password" class="sl" name="password_again" value="" autocomplete="off"></td>
                    </tr>
                    <tr>
                        <td width="120" align="right"></td>
                        <td width="auto" align="left"><input type="hidden" value="21590" name="once"><input type="submit" class="super normal button" value="更改密码"></td>
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

//                show_success_alert('成功', '密码修改成功', function(){
//                    oform.password_current.value = '';
//                    oform.password_new.value = '';
//                    oform.password_again.value = '';
//                    $('#alert-change-password').hide();
//                });
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
            showProfileError(thiz, '邮箱地址不正确');
            return false;
        }
        doCheckField(thiz, '<?php echo site_url("customer/checkEmail")?>', 'email');

    }

    function doCheckField(thiz, url, fieldname){
        var data = {fieldname: $.trim(thiz.value), 'uid' : '<?php echo $loginInfo['id'] ?>'};
        console.log(url);
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



</script>

<include file="Public:footer1"/>
</body>
</html>