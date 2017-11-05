<include file="Public:header1"/>
<link href="http://cdn.bootcss.com/bootstrap-datepicker/1.7.0/css/bootstrap-datepicker.min.css" type="text/css" rel="stylesheet">
<script type="text/javascript" language="javascript" src="http://cdn.bootcss.com/bootstrap-datepicker/1.7.0/js/bootstrap-datepicker.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap-datepicker/1.7.0-RC3/locales/bootstrap-datepicker.zh-CN.min.js"></script>
<div id="setting-Main">
    <div class="setting-box">
        <div class="setting-header">
            <a href="/">宝贝星</a> <span class="chevron">&nbsp;›&nbsp;</span> 个人设置
        </div>
        <div class="inner">
            <form method="post" action="/settings">
                <table cellpadding="5" cellspacing="0" border="0" width="100%" class="setting-table">
                    <tbody>
                    <tr>
                        <td width="120" align="right">昵称</td>
                        <td width="auto" align="left"><input type="text" class="sl" name="website" value="vagasnail" autocomplete="off"></td>
                    </tr>

                    <tr>
                        <td width="120" align="right">手机号</td>
                        <td width="auto" align="left"><input type="text" class="sl" name="website" value="" autocomplete="off"></td>
                    </tr>

                    <tr>
                        <td width="120" align="right">电子邮件</td>
                        <td width="auto" align="left"><input type="text" class="sl" name="website" value="daiming253685@126.com" autocomplete="off"></td>
                    </tr>

                    <tr>
                        <td width="120" align="right">宝宝生日</td>
                        <td width="auto" align="left"><input type="text" id="bbbirthday" class="sl" name="website" value="" autocomplete="off"></td>
                    </tr>
                    <tr>
                        <td width="120" align="right">年龄</td>
                        <td width="auto" align="left"><input type="text" class="sl" name="company" value="" maxlength="32" autocomplete="off" style="width: 48px"  onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"></td>
                    </tr>
                    <tr>
                        <td width="120" align="right">性别</td>
                        <td width="auto" align="left">
                            <label>男<input type="radio" name="sex" value="1"></label>
                            <label>女<input type="radio" name="sex" value="0"></label>
                        </td>
                    </tr>
                    <tr>
                        <td width="120" align="right">所在地址</td>
                        <td width="auto" align="left"><textarea class="ml"  name="bio" cols="40" style="resize: none;height: 48px"></textarea></td>
                    </tr>
                    <tr>
                        <td width="120" align="right">个人简介</td>
                        <td width="auto" align="left"><textarea class="ml" name="bio" rows="5" cols="40" style="resize: none"></textarea></td>
                    </tr>

                    <tr>
                        <td width="120" align="right"></td>
                        <td width="auto" align="left"><input type="hidden" value="1" name="show_ads"><input type="hidden" value="21590" name="once"><input type="submit"
                                                                                                                                                           class="super normal button"
                                                                                                                                                           value="保存设置"></td>
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
            <table class="setting-table" cellpadding="5" cellspacing="0" border="0" width="100%">
                <tbody>
                <tr>
                    <td width="120" align="right">当前头像</td>
                    <td width="auto" align="left"><img src="//v2ex.assets.uxengine.net/avatar/fa6c/3d0b/45364_large.png?m=1474165977" class="avatar" border="0" align="default">
                        &nbsp; <img src="//v2ex.assets.uxengine.net/avatar/fa6c/3d0b/45364_normal.png?m=1474165977" class="avatar" border="0" align="default"> &nbsp; <img
                            src="//v2ex.assets.uxengine.net/avatar/fa6c/3d0b/45364_mini.png?m=1474165977" class="avatar" border="0" align="default"></td>
                </tr>
                <tr>
                    <td width="120" align="right"></td>
                    <td width="auto" align="left"><input type="hidden" value="21590" name="once"><input type="button" onclick="location.href = '/settings/avatar';"
                                                                                                        class="super normal button" value="上传新头像"></td>
                </tr>
                </tbody>
            </table>
    </div>
    <div class="setting-sep20"></div>
    <div class="setting-box">
        <div class="cell">
            更改密码
        </div>
        <div class="inner">
            <form method="post" action="/settings/password">
                <table class="setting-table" cellpadding="5" cellspacing="0" border="0" width="100%">
                    <tbody>
                    <tr>
                        <td width="120" align="right">当前密码</td>
                        <td width="auto" align="left"><input type="password" class="sl" name="password_current" value=""></td>
                    </tr>
                    <tr>
                        <td width="120" align="right">新密码</td>
                        <td width="auto" align="left"><input type="password" class="sl" name="password_new" value=""></td>
                    </tr>
                    <tr>
                        <td width="120" align="right">再次输入新密码</td>
                        <td width="auto" align="left"><input type="password" class="sl" name="password_again" value=""></td>
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

<script>
    $(function () {
        $('#bbbirthday').datepicker({
            format: "yyyy-mm-dd",
            autoclose: true,
            language: 'zh-CN'
        });
    });
</script>

<include file="Public:footer1"/>
</body>
</html>