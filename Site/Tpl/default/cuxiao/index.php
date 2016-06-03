<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{$sys.sitename} -- {$sys.seoname}</title>
<meta name="keywords" content="{$sys.keywords}" />
<meta name="description" content="{$sys.description}" />
<include file="Public:resources" />
<script src="__PUBLIC__/site/flexslider2/js/jquery.flexslider-min.js"></script>
<link href="__PUBLIC__/site/flexslider2/css/style.css" rel="stylesheet" type="text/css" />
<script src="__PUBLIC__/site/js/jcarousellite_1.0.1.min.js"></script>
<style type="text/css">
*{
	margin:0;
	padding:0;
}
body{
	background: #FFFBF5;
}
img{
	border:none;
	padding:0px 0px 0px 0px;
	margin:0px 0px 0px 0px;
	vertical-align:top;
	display:inline-block;
}

a{
	border:none;
}

table{
	width:1200px;
	over-flow:hidden;
}
table tr{
	width:1200px;
	over-flow:hidden;
}

table tr td{
	*font-size:0;
	margin:0 0 0 0;
	padding:0 0 0 0;
	over-flow:hidden;
	text-align:left;
}

table tr td a{
	border:none;
	*font-size:0;
	margin:0;
	padding:0;
}

.video{
	
}

.head{
	font-size:20px;font-family:SimHei;margin:6px 0 8px 0;color:#373737;
	
}

.textbox{
	height:28px;
	line-height:28px;
	background: #EFEFEF;
	border:1px solid #ccc;
	padding-left:4px;
	font-size:16px;
	width:146px;
	font-family:SimHei;
}

#signup_list{
	color:#6EAAFF;
	font-family:SimSun;
	font-weight:bold;
	overflow:hidden;
	font-size:14px;
	padding-left:10px;
	width:220px;
	height:220px;
	*height:215px;
}
.mark-win{
	position: absolute;
	left: 50%;
	margin-left:-601px;
	*margin-left:-601px !important;
	*margin-left:-602px;
	top:90px;
}

.mark-huodong{
	position: absolute;
	left: 50%;
	margin-left:-601px; /*else*/
	*margin-left:-601px; /*ie6*/
	*margin-left:-602px !important; /*ie7*/
	top:632px;
	*top:633px;
	z-index:99;
	width:1202px;
	border:none;
}

.jCarouselLite{

}

</style>
<!--[if IE 6]>
<script type="text/javascript" src="__PUBLIC__/site/js/DD_belatedPNG.min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('*');
</script>
<![endif]-->
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0"  cellspacing="0" cellpadding="0">
<script>
$(document).ready(
		function(){
			$('.flexslider').flexslider({pauseOnHover: true,slideshowSpeed: 6000,controlNav:false});
			$(".jCarouselLite").jCarouselLite({
			    auto: 800,
			    speed: 1000,
			    visible: 4
			});
			$(".jCarouselLite2").jCarouselLite({
			    auto: 845,
			    speed: 900,
			    visible: 4
			});
			var doc=document,inputs=doc.getElementsByTagName('input'),
			    supportPlaceholder='placeholder'in doc.createElement('input'),
			placeholder = function(input, color){
				var text=input.getAttribute('placeholder'),
				    defaultValue=input.defaultValue;
			    if(defaultValue==''){
			    	input.style.color = color;
				    input.value=text;
				}
				input.onfocus=function(){
					if(input.value===text){
						this.style.color = "";
						this.value='';
					}
				};
				input.onblur=function(){
					if(input.value===''){
						this.value=text;
						this.style.color = color;
						}
					}
				};
				if(!supportPlaceholder){
					for(var i=0,len=inputs.length;i<len;i++){
						var input=inputs[i],text=input.getAttribute('placeholder');
						if(input.type==='text'&&text){
							placeholder(input, "#A9B8CE");
						}
					}
				}

				getSignupList();
			});
</script>
<img class="mark-win" src="__PUBLIC__/site/images/cuxiao/cuxiao-win-new.jpg" border="none" />
<img class="mark-huodong" id="huodong_liangdian" style="display: none;" src="__PUBLIC__/site/images/cuxiao/huodong-liangdian.jpg" border="none"  />
<img class="mark-huodong" id="huodong_xiangqing"  src="__PUBLIC__/site/images/cuxiao/huodong-xiangqing.jpg" border="none"/>
<center>
<!-- ImageReady Slices (促销页面设计.psd) -->
<table id="__01" width="1200" height="2472" border="0" cellpadding="0" cellspacing="0" style="border:none;">
	<tr>
		<td colspan="18" width="1200">
		<div class="site-top" style="width:1200px;margin:0 auto;">
        </div>
        <include file="Public:head-cuxiao" />
			</td>
		<td>
	</tr>
	<tr>
		<td colspan="18">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_02.jpg" width="1200" height="303" alt=""></td>
	</tr>
	<tr>
		<td colspan="18">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_03.jpg" width="1200" height="1" alt=""></td>
	</tr>
	<tr>
		<td colspan="18">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_04.jpg" width="1200" height="10" alt=""></td>
	</tr>
	<tr>
		<td colspan="18">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_05.jpg" width="1200" height="84" alt=""></td>
	</tr>
	<tr>
		<td colspan="18">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_06.jpg" width="1200" height="31" alt=""></td>
	</tr>
	<!--  -->
	<tr>
		<td colspan="2" rowspan="6">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_07.jpg" width="280" height="472" alt=""></td>
		<td colspan="3">
			<a href="http://gzdsb.gog.com.cn/"><img src="__PUBLIC__/site/images/cuxiao/cuxiao_08.jpg" width="146" height="59" alt=""></a></td>
		<td colspan="2">
			<a href="http://www.soufang.com/"><img src="__PUBLIC__/site/images/cuxiao/cuxiao_09.jpg" width="132" height="59" alt=""></a></td>
		<td colspan="4">
			<a href="http://gy.soufun.com/ad/ad/jiayuan/"><img src="__PUBLIC__/site/images/cuxiao/cuxiao_10.jpg" width="128" height="59" alt=""></a></td>
		<td colspan="4">
			<a href="http://www.gzjcz.cn/"><img src="__PUBLIC__/site/images/cuxiao/cuxiao_11.jpg" width="140" height="59" alt=""></a></td>
		<td align="right">
			<a href="http://www.gystv.com/"><img src="__PUBLIC__/site/images/cuxiao/cuxiao_12.jpg" width="94" height="59" alt=""></a></td>
		<td colspan="2" rowspan="6">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_13.jpg" width="282" height="472" alt=""></td>
	</tr>
	<tr>
		<td colspan="14">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_14.jpg" width="640" height="11" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">
			<a href="javascript:void(0)" onclick="change_huodong(1)"><img src="__PUBLIC__/site/images/cuxiao/cuxiao_15.jpg" width="127" height="37" alt=""></a></td>
		<td colspan="2">
			<a href="javascript:void(0)" onclick="change_huodong(2)"><img src="__PUBLIC__/site/images/cuxiao/cuxiao_16.jpg" width="127" height="37" alt=""></a></td>
		<td colspan="4">
			<a href="__APP__/P360/taocan/" ><img src="__PUBLIC__/site/images/cuxiao/cuxiao_17.jpg" width="131" height="37" alt=""></a></td>
		<td colspan="3">
			<a href="javascript:void(0)"><img src="__PUBLIC__/site/images/cuxiao/cuxiao_18.jpg" width="127" height="37" alt=""></a></td>
		<td colspan="3">
			<a href="__APP__" ><img src="__PUBLIC__/site/images/cuxiao/cuxiao_19.jpg" width="128" height="37" alt=""></a></td>
	</tr>
	<tr>
		<td colspan="14">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_20.jpg" width="640" height="75" alt=""></td>
	</tr>
	<tr>
		<td colspan="10" rowspan="2">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_21.jpg" width="461" height="290" alt=""></td>
		<td colspan="2">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_22.jpg" width="72" height="26" alt=""></td>
		<td colspan="2" rowspan="2">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_23.jpg" width="107" height="290" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_24.jpg" width="72" height="264" alt=""></td>
	</tr>
	<!--  -->
	<tr>
		<td colspan="18" style="text-align:center;">
		<div id="signup_div" style="width:700px;text-align:left;height:275px;border-bottom:0px solid #000;margin:0 auto;">
		<div style="margin-top:24px;*margin-top:12px;border-right:2px solid #ddd;width:246px;height:260px;*height:250px;float:left;margin-bottom:15px;">
			<div class="head">视频展示</div>
			<div class="video">
			
 	        <embed src="http://player.youku.com/player.php/sid/XMzE2Mjk4MzAw/v.swf" allowfullscreen="true" quality="high" width="240" height="220" align="middle" allowscriptaccess="always" type="application/x-shockwave-flash" wmode="transparent"></embed> 
	        </div>
	    </div>
	    <div style="margin-top:24px;*margin-top:12px;border-right:2px solid #ddd;width:205px;height:260px;*height:250px;float:left;margin-bottom:15px;">
			<div class="head" style="padding-left:6px;">在线报名</div>
			<div>
			<div style="text-align:center;margin-bottom:8px;"><input class="textbox" type="text" name="cx_name" id="cx_name" placeholder="姓名"  /></div>
			<div style="text-align:center;margin-bottom:8px;"><input class="textbox" type="text" name="cx_tel" id="cx_tel"  placeholder="电话"/></div>
			<div style="text-align:center;margin-bottom:8px;"><input class="textbox" type="text" name="cx_phone" id="cx_phone"  placeholder="手机" /></div>
			<div style="text-align:center;margin-top:24px;"><a href="javascript:void(0)" onclick="do_signup()"><img src="__PUBLIC__/site/images/cuxiao/signup.png" border="none" /></a></div>
			<div style="text-align:center;margin-top:12px;"><img src="__PUBLIC__/site/images/cuxiao/signup-desc.png" border="none" /></div>
	        </div>
	    </div>
	    <div style="margin-top:24px;*margin-top:12px;width:175px;height:260px;*height:250px;float:left;margin-bottom:15px;">
			<div class="head" style="padding-left:6px;">报名人数<img src="__PUBLIC__/site/images/cuxiao/signup-hot.png" border="none" /></div>
			<div id="signup_list">
			
	        </div>
	    </div>
		</div>
		</td>
	</tr>

	<tr>
		<td colspan="18">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_26.jpg" width="1200" height="244" alt=""></td>
	</tr>
	<tr>
		<td colspan="18">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_27.jpg" width="1200" height="44" alt=""></td>
	</tr>
	<tr>
		<td colspan="3" rowspan="2">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_28.jpg" width="281" height="401" alt=""></td>
		<td colspan="14">
			<div class="flexslider" style="width:640px;height:359px;margin:0px auto;">
		            <ul class="slides">
					    <li><img src="__PUBLIC__/site/images/cuxiao/cuxiao_29.jpg" border="0" width="640" height="359" /></li>
					    <li><img src="__PUBLIC__/site/images/cuxiao/cuxiao_29_1.jpg" border="0" width="640" height="359" /></li>
					    <li><img src="__PUBLIC__/site/images/cuxiao/cuxiao_29_2.jpg" border="0" width="640" height="359" /></li>
		            </ul>
			</div>
			</td>
		<td rowspan="2">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_30.jpg" width="279" height="401" alt=""></td>
	</tr>
	<tr>
		<td colspan="14">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_31.jpg" width="640" height="42" alt=""></td>
	</tr>
	<tr>
		<td colspan="18">
		<!-- jCarouselLite -->
			<div class="jCarouselLite">
			<ul>
			<li><img src="__PUBLIC__/site/images/cuxiao/cuxiao_32.jpg" width="300" height="224" alt=""></li>
			<li><img src="__PUBLIC__/site/images/cuxiao/cuxiao_33.jpg" width="300" height="224" alt=""></li>
			<li><img src="__PUBLIC__/site/images/cuxiao/cuxiao_34.jpg" width="300" height="224" alt=""></li>
			<li><img src="__PUBLIC__/site/images/cuxiao/cuxiao_35.jpg" width="300" height="224" alt=""></li>
			</ul>
			</div>
			
		</td>

	</tr>
	<tr>
		<td colspan="18">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_36.jpg" width="1200" height="45" alt=""></td>
	</tr>
	<tr>
		<td colspan="18">
		<!-- jCarouselLite -->
			<div class="jCarouselLite2">
			<ul>
			<li><img src="__PUBLIC__/site/images/cuxiao/cuxiao_37.jpg" width="300" height="224" alt=""></li>
			<li><img src="__PUBLIC__/site/images/cuxiao/cuxiao_38.jpg" width="300" height="224" alt=""></li>
			<li><img src="__PUBLIC__/site/images/cuxiao/cuxiao_39.jpg" width="300" height="224" alt=""></li>
			<li><img src="__PUBLIC__/site/images/cuxiao/cuxiao_40.jpg" width="300" height="224" alt=""></li>
			</ul>
			</div>
		</td>
	</tr>
	<tr>
		<td colspan="18">
			<img src="__PUBLIC__/site/images/cuxiao/cuxiao_41.jpg" width="1200" height="43" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="__PUBLIC__/site/images/cuxiao/分隔符.gif" width="268" height="1" alt=""></td>
		<td>
			<img src="__PUBLIC__/site/images/cuxiao/分隔符.gif" width="12" height="1" alt=""></td>
		<td>
			<img src="__PUBLIC__/site/images/cuxiao/分隔符.gif" width="1" height="1" alt=""></td>
		<td>
			<img src="__PUBLIC__/site/images/cuxiao/分隔符.gif" width="126" height="1" alt=""></td>
		<td>
			<img src="__PUBLIC__/site/images/cuxiao/分隔符.gif" width="19" height="1" alt=""></td>
		<td>
			<img src="__PUBLIC__/site/images/cuxiao/分隔符.gif" width="108" height="1" alt=""></td>
		<td>
			<img src="__PUBLIC__/site/images/cuxiao/分隔符.gif" width="24" height="1" alt=""></td>
		<td>
			<img src="__PUBLIC__/site/images/cuxiao/分隔符.gif" width="23" height="1" alt=""></td>
		<td>
			<img src="__PUBLIC__/site/images/cuxiao/分隔符.gif" width="3" height="1" alt=""></td>
		<td>
			<img src="__PUBLIC__/site/images/cuxiao/分隔符.gif" width="81" height="1" alt=""></td>
		<td>
			<img src="__PUBLIC__/site/images/cuxiao/分隔符.gif" width="21" height="1" alt=""></td>
		<td>
			<img src="__PUBLIC__/site/images/cuxiao/分隔符.gif" width="55" height="1" alt=""></td>
		<td>
			<img src="__PUBLIC__/site/images/cuxiao/分隔符.gif" width="51" height="1" alt=""></td>
		<td>
			<img src="__PUBLIC__/site/images/cuxiao/分隔符.gif" width="21" height="1" alt=""></td>
		<td>
			<img src="__PUBLIC__/site/images/cuxiao/分隔符.gif" width="13" height="1" alt=""></td>
		<td>
			<img src="__PUBLIC__/site/images/cuxiao/分隔符.gif" width="94" height="1" alt=""></td>
		<td>
			<img src="__PUBLIC__/site/images/cuxiao/分隔符.gif" width="1" height="1" alt=""></td>
		<td>
			<img src="__PUBLIC__/site/images/cuxiao/分隔符.gif" width="279" height="1" alt=""></td>
	</tr>
</table>
<div style="height:296px;background:#242424;width:1198px;border:1px solid #242424;">
<img src="__PUBLIC__/site/images/cuxiao/cuxiao_50.jpg" style="margin-top:14px;" />
<div style="text-align:center;color:#fff;"><h3 style="margin-top:10px;margin-bottom:6px;">贵阳大十字时代广场北楼8楼</h3></div>
</div>
<div style="height:120px;background:#EFF3F6;width:1200px;">
<include file="Public:foot2" />
</div>
</center>
<!--END-->
<script type="text/javascript">
function do_signup(){
	if($.trim($("#cx_name").val()) == ""){
           alert("请填写您的姓名");
           return;
	}
	var reg = new RegExp("^[0-9-]{6,20}$");
	
	if($.trim($("#cx_tel").val()) == "" && $.trim($("#cx_phone").val()) == ""){
        alert("请填写您的电话或者手机");
        return;
	}

	if($.trim($("#cx_tel").val()) != "" && !reg.test($("#cx_tel").val())){
	    alert("请输入正确的电话!");
	    return
	}

	if($.trim($("#cx_phone").val()) != "" && !reg.test($("#cx_phone").val())){
	    alert("请输入正确的手机号码!");
	    return
	}
	    
	var args = {
	          "name": $("#cx_name").val(),
	          "tel": $("#cx_tel").val(),
	          "phone": $("#cx_phone").val()
	};
	$.post('__URL__/signup',args,function(data){
        $("#cx_name").val("");
        $("#cx_tel").val("");
        $("#cx_phone").val("");
        getSignupList();
		//window.location = "__URL__" + "#signup_div";
	});
}

function change_huodong(o){
	if(o == 1){
		$("#huodong_liangdian").hide();
		$("#huodong_xiangqing").show();
	}else if(o == 2){
		$("#huodong_xiangqing").hide();
		$("#huodong_liangdian").show();
	}
}

function getSignupList(){
	$.post('__URL__/getSignup',{},function(data){
		var signupArr = eval('(' + data + ')');
		
		$("#signup_list").empty();
		var sls = [];
		for(var i = 0, len = signupArr.length; i < len; i++){
			var su = signupArr[i];
			sls[sls.length] = '<div>' + su['name'] + '(' + su['created'] + '已申请成功！)</div>';
		}
		$("#signup_list").append(sls.join(""));
		
	});
	
}
</script>
</body></html>