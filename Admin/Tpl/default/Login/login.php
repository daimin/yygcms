<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0114)http://www.blogjava.net/login.aspx?ReturnUrl=%2fvagasnail%2fadmin%2fEditPosts.aspx&/vagasnail/admin/EditPosts.aspx -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统登录</title>
<link href="__PUBLIC__/admin/css/base.css" type="text/css" rel="stylesheet"> 
<link href="__PUBLIC__/admin/css/login.css" type="text/css" rel="stylesheet">
<script language="javascript">
	function setfocus(event)
	{
		event = window.event|event;
		if(document.forms[0]['tbUserName'].value!='')
		{
			document.forms[0]['tbPassword'].focus()
		}
		else
		{
			document.forms[0]['tbUserName'].focus()
		}

		document.onkeypress = function(){
			 var code = 0;
			 if (NS4)
			     code = event.which;
			 else
			     code = event.keyCode;
		     if(code == 13){
		    	 doSubmit();
			 }
		};
	}
    </script></head>

<body onload="setfocus(event)">
    <form name="frmLogin" id="frmLogin" method="post" action="<?php echo site_url("Login/login")?>" id="frmLogin">
<div>
</div>



<script language="JavaScript">
NS4 = (document.layers) ? true : false;
function checkEnter(event,element)
{     
//    var code = 0;
//    if (NS4)
//        code = event.which;
//    else
//        code = event.keyCode;
//    if (code==13)
//	{
//       	if(element.name=='tbUserName')//tbUserName-�û����ı����Name
//		{
//			document.frmLogin.tbPassword.focus();//frmLogin-�������,tbPassword-�����ı��ܵ�Name
//		}
//		
//	}
}

</script>


<script type="text/javascript">
//<![CDATA[
function WebForm_OnSubmit() {
    if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
    return true;
}
//]]>

window.onload = function(){

    document.onkeyup = function(event){
        evet = window.event||event;
        var code = evet.which||evet.keyCode;
        if(code == 13){
           doSubmit();
        } 
    };
    refreshVeryCode();
};
</script>

        <table id="tbLogin" align="center">
            <tbody><tr>
                <td>
                    <div id="Main">
                        <div id="Heading">请登录</div>
                        <label class="MyLabel">用户名</label>
                        <input name="tbUserName" type="text" id="tbUserName" size="34" class="Textbox" onkeypress="checkEnter(event,this)"><br>
                        <span id="Required_UserName" style="color:Red;visibility:hidden;">用户名不能为空</span>
                        <label class="MyLabel">密码</label>
                        <input name="tbPassword" type="password" id="tbPassword" size="40" class="Textbox" onkeypress="checkEnter(event,this)"><br>
                        <span id="Required＿Password" style="color:Red;visibility:hidden;">密码不能为空</span><br/>
                       <label class="MyLabel">验证码</label>
                       <img src='__URL__/verifyCode/' id="verifyCodeImg" border="none" style="vertical-align: middle;margin-right:12px;" />
                        
                        <input name="tbVeryCode" type="text" id="tbVeryCode" class="Textbox" style="width:60px;" onkeypress="checkEnter(event,this)">
                        &nbsp;<a style="color:#66f;" href="javascript:void(0)" onclick="refreshVeryCode()">刷新</a>
                        <br>
                        <span id="Required＿VeryCode" style="color:Red;visibility:hidden;">验证码不能为空</span><br/>
                        <a id="lblLogin" class="Button" href="javascript:doSubmit()" style="margin-top: 8px">登录</a>
                        
                        <p class="Small">
                        &nbsp;&nbsp;
                        <input type="hidden" name="action" value="login" >
                       
                         <br>
                         <br>
                         &nbsp;&nbsp;
                        </p>
                        <br style="clear: both">
                        <span id="Message" class="ErrorMessage" fontbold="true" style="color:Red;">
                        <?php 
                        if(isset($err)){
                            echo $err;   	
                        }
                        ?>
                        </span></div>
                </td>
            </tr>
        </tbody></table>
    
<script type="text/javascript">
//<![CDATA[
var Page_Validators =  new Array(document.getElementById("Required_UserName"), document.getElementById("Required＿Password"), document.getElementById("Required＿VeryCode"));
//]]>
</script>




<script type="text/javascript">
//<![CDATA[

function ValidatorCommonOnSubmit(){
    var frmLogin = document.getElementById("frmLogin");
    var ok = true;
    if(frmLogin.tbUserName.value == ""){
        Page_Validators[0].style.visibility = "";
        ok = false;
    }
    
    if(frmLogin.tbPassword.value == ""){
        Page_Validators[1].style.visibility = "";
        ok = false;
    }

    if(frmLogin.tbVeryCode.value == ""){
        Page_Validators[2].style.visibility = "";
        ok = false;
    }

    return ok;
    
}

function doSubmit(){

	var frmLogin = document.getElementById("frmLogin");
	var re = WebForm_OnSubmit();
	if(re){
		frmLogin&frmLogin.submit();
	}
}

function ValidatorOnSubmit() {
    return ValidatorCommonOnSubmit();
}

function refreshVeryCode(){
	var verifyCodeImg = document.getElementById("verifyCodeImg");
	verifyCodeImg.src = "__URL__/verifyCode/" + (new Date().getTime());
}
        //]]>
</script>
</form>


</body></html>
