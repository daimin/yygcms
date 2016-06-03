<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{$sys.sitename} -- {$sys.seoname}</title>
<meta name="keywords" content="{$sys.keywords}" />
<meta name="description" content="{$sys.description}" />
<include file="Public:resources" />
</head>
<body> 
<div class="bodyall">
	<include file="Public:head360" />
	<div class="360-banner">
	<img border="0" src="__PUBLIC__/site/images/bannerlookus.jpg" alt="" width="100%" />
	</div>
	<div class="content360">
		<div class="pagenav">
		<img src="__PUBLIC__/site/images/zaixianyudingicon.jpg" alt="在线预订" width="112" height="32" style="float:left;" border="0" />
		<span style="float:right;height:38px;line-height:38px;min-height:38px;color:#6f6f70;"><span>首页</span><span> >> </span><span>看我们</span><span> >> </span><span>在线预订</span></span>
		</div>
		<div class="box-yuding">
            <form method="post" id="yuding-form" action="__ACTION__">
                <table class="yuding-tab" border="0" >
                    <tr>
                        <td class="head">面积：</td><td><input name="area" size="15" /> m<sup>2</sup></td>
                        <td class="head">户型：</td><td><input name="shi" size="4" />室 <input name="ting" size="4" />厅 <input name="wei" size="4" />卫</td>
                    </tr>
                    <tr>
                        <td class="head">城市：</td><td><input name="city" size="15" /></td>
                        <td class="head">小区：</td><td><input name="xiaoqu" size="20" /></td>
                    </tr>
                    <tr>
                        <td class="head">装修风格：</td>
                        <td colspan="3">
                            <select name="style">
                                <?php 
                                foreach($styles as $sk=>$sv){
                                    echo '<option value="'.$sv.'">'.$sv.'</option>';
                                }
                                ?>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="head">您的姓名：</td><td><input name="name" size="15" /></td>
                        <td class="head">您的性别：</td>
                        <td>
                            <select name="sex">
                                <option value="男">男</option>
                                <option value="女">女</option>
                            </select>    
                        </td>
                    </tr>
                    <tr>
                        <td class="head">您的电话：</td>
                        <td colspan="3">
                            <input name="phone" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td class="head">您的预算：</td>
                        <td colspan="3">
                            <input name="yusuan" size="30" /> 元
                        </td>
                    </tr>
                    
                    <tr >
                        <td colspan="4" style="padding-top:22px;">
                            <a href="javascript:void(0)" onclick="validateForm()"><img src="__PUBLIC__/site/images/commit-yuding-btn.jpg" border="none" /></a>
                            &nbsp;&nbsp;
                            <a href="__APP__/LookUs/contactus/"><img src="__PUBLIC__/site/images/yuding-btn.png" border="none" /></a>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
	</div>
	
	<!--imenux end-->
<div class="cls"></div>
<script src="__PUBLIC__/site/js/jsddm.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
     
});

function validateForm(){
    var yudingForm = $("#yuding-form").get(0);
    var area = $.trim(yudingForm.area.value);
    var shi = $.trim(yudingForm.shi.value);
    var ting = $.trim(yudingForm.ting.value);
    var wei = $.trim(yudingForm.wei.value);
    var city = $.trim(yudingForm.city.value);
    var xiaoqu = $.trim(yudingForm.xiaoqu.value);
    var name = $.trim(yudingForm.name.value);
    var phone = $.trim(yudingForm.phone.value);
    var yusuan = $.trim(yudingForm.yusuan.value);
    var _vv = function(n, v, vnum, vphone){
        v = $.trim(v);
        if(v == null || v == ''){
            return n + '不可以为空 -- \n';
        }
        if(vnum){
           var num_reg = new RegExp("^[0-9]+$");
           if(!num_reg.test(v)){
               return n + '必须是整数 -- \n';
           }
        }
        if(vphone){
           var phone_reg = new RegExp("^[0-9-]{6,20}$");
           if(!phone_reg.test(v)){
               return n + '格式不正确 -- \n';
           }
        }
        return '';
    };
    var msg = _vv("面积", area, true);
    msg += _vv("户型", shi, true);
    msg += _vv("户型", ting, true);
    msg += _vv("户型", wei, true);
    msg += _vv("城市", city);
    msg += _vv("小区", xiaoqu);
    msg += _vv("您的姓名", name);
    msg += _vv("您的电话", phone, false, true);
    msg += _vv("您的预算", yusuan, true);
    if(msg){
        alert(msg);
        return false;
    }else{
        yudingForm.submit();
    }
    
}
</script>
  <!--底部-->
<include file="Public:foot" />
<!--END-->
</body></html>