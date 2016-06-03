<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{$sys.sitename} -- {$sys.seoname}</title>
<meta name="keywords" content="{$sys.keywords}" />
<meta name="description" content="{$sys.description}" />
<include file="Public:resources" />
<link rel="stylesheet" href="__PUBLIC__/site/js/lightbox/css/lightbox.css" type="text/css" media="screen" />
</head>
<body> 
<div class="bodyall">
<!-- 除首页外，所有的业务页面都用head360了 -->
	<include file="Public:head360" />
	<div class="360-banner">
	<img border="0" src="__PUBLIC__/site/images/banner-sheji.jpg" alt="" width="100%" />
	</div>
	<div class="content360">
		<div class="pagenav">
		<a href="__URL__/tuandui/"><img src="__PUBLIC__/site/images/design-tuandui-icon.png" alt="设计团队" width="119" height="38" style="float:left;" border="0" /></a>
		<span style="float:right;height:38px;line-height:38px;min-height:38px;color:#6f6f70;text-align:right;"><span>首页</span> <span>>></span> 
		                                                                        <span>看设计</span> <span>>></span> 
		                                                                        <span>设计团队</span> <span>>></span> 
		                                                                        <span>在线预订
		                                                                        </span>
		</div>
		<div class="box-design-tuandui" >
		<?php 
		if(isset($err) && !empty($err)){
			?>
			<div style="font-size:14px;color:#a22;background:#f8f8cc;text-align:center;float:left;width:100%;height:32px;line-height:32px;margin-bottom:32px;">{$err}</div>
			<?php 
		}
		?>
		<form method="post" action="__ACTION__" onsubmit="return validateForm(this)">
		<table id="yuding-tab" border="0"  cellpadding="0"  cellspacing="0" width="800">
		   <tr>
		   <td class="head">* 姓名：</td>
		   <td class="tail">
		   <input type="text" size="40" name="name" id="name"  />
		   </td>
		   </tr>
		   <tr>
		   <td class="head">电话：</td>
		   <td class="tail">
		   <input type="text" size="40" name="phone" id="phone"  />
		   </td>
		   </tr>
		   <tr>
		   <td class="head">QQ：</td>
		   <td class="tail">
		   <input type="text" size="40" name="qq"  id="qq"  />
		   </td>
		   </tr>
		   <tr>
		   <td  class="head">邮箱：</td>
		   <td class="tail">
		   <input type="text" size="40" name="mail" id="mail" />
		   </td>
		   </tr>
		   
		   <tr>
		   <td  class="head">说明(200字以内)：</td>
		   <td class="tail">
		   <textarea rows="6" cols="60" name="brief"></textarea>
		   </td>
		   </tr>
		   <tr>
		   <td colspan="2">
		   <input type="submit" name="submit" value=" 提交 " />
		   <input type="reset" name="cancel" value=" 取消 " />
		   </td>
		   
		   </tr>
		</table>
		
		</form>
		
		</div>
	</div>
	
	<!--imenux end-->
<div class="cls"></div>
<script src="__PUBLIC__/site/js/jsddm.js" type="text/javascript"></script>
<script type="text/javascript" src="__PUBLIC__/site/js/lightbox/js/lightbox-2.6.min.js"></script>
<script type="text/javascript">

function validateForm(f){
	var msg = "";
	if(f.name.value == ""){
        msg += "姓名不能为空!\n";
	}
	if(f.qq.value == "" && f.mail.value == "" && f.phone.value == ""){
        msg += "电话、QQ、邮箱至少有一个不为空!\n";
	}
    var vali = function(){
    	var reg = new RegExp("^[0-9-]{4,20}$");
    	var regMail = new RegExp("^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$");
        if(f.qq.value != "" && !reg.test(f.qq.value)){
        	msg += "QQ号码格式不正确!\n";
        }
        if(f.phone.value != "" && !reg.test(f.phone.value)){
        	msg += "电话格式不正确!\n";
        }
        if(f.mail.value != "" && !regMail.test(f.mail.value)){
        	msg += "邮箱格式不正确!\n";
        }

        return msg;
    };
	
	
	if(msg == ""){
		msg = vali();
		if(msg == ""){
           return true;
		}else{
			alert(msg);
			return false;
		}
	}else{
		alert(msg);
		return false;
	}
}
</script>
  <!--底部-->
<include file="Public:foot" />
<!--END-->
</body></html>