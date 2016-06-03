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
		<img src="__PUBLIC__/site/images/liuyanbanicon.jpg" alt="留言板" width="118" height="38" style="float:left;" border="0" />
		<span style="float:right;height:38px;line-height:38px;min-height:38px;color:#6f6f70;"><span>首页</span><span> >> </span><span>看我们</span><span> >> </span><span>留言板</span></span>
		</div>
		<div class="box-lookus-msgboard">
		   <table border="0" width="100%">
			  <volist name="list" id="item">
	             <tr>
	             <td>
	             <table border="0" style="border-bottom: 1px solid #bbb;margin-bottom: 12px;padding-bottom: 6px;" width="100%">
	             <tr>
	             <td align="left" nowrap="nowrap" style="color:#666;font-size:14px;">{$item.ctime}&nbsp;&nbsp;&nbsp;{$item.name}
	             </td>
	             </tr>
	             <tr>
	             <td align="left">
	             <div>
	             <?php echo stripslashes(htmlspecialchars_decode($item['content'], ENT_QUOTES)); ?>
	             </div>
	             <?php if($item['rtime'] != '0000-00-00 00:00:00'){ ?>
		             <div style="margin-left:24px;margin-top:12px;border:1px solid #ddc;background: #ffe;float:left;color:#555;width:96%;">
		             <div style="background: #F5EE8F;padding-left:12px;color:#666;">回复：<?php echo $item['rtime'] ?></div>
		             <div style="padding:3px 6px;">
		             <?php echo stripslashes(htmlspecialchars_decode($item['recontent'], ENT_QUOTES)); ?>
		             </div>
		             </div>
	             <?php }?>
	             </td>
	             </tr>
	             </table>
	             </td>
	             </tr>			    
			  </volist>
			  <tr align="right">
				<td height="36" colspan="2" align="center" id="pages" style="text-align:center;padding-top:32px;">
					{$page}
				</td>
				</tr>
		   </table>
		   
		   <div style="margin-top:42px;text-align:center;">
		   <form action="__URL__/leavemsg" method="post" id="leavemsg-form">
		   <table border="0" class="leavemsg-form">
		   <tr>
		   <td align="left" width="82">姓名：</td>
		   <td align="left"><input type="text" name="cname" id="cname" size="40" /></td>
		   </tr>
		   <tr>
		   <td align="left" width="82">联系方式：</td>
		   <td align="left"><input type="text" name="contact" id="contact"  size="40"/></td>
		   </tr>
		   <tr>
		   <td colspan="2" style="padding-top:8px;">
		   <textarea rows="20" style="width:784px;" name="msg" id="msg-content" ></textarea>
		   </td>
		   </tr>
		   <tr>
		   <td colspan="2" style="text-align:left;padding-top:12px;">
		   <!-- <input type="submit" name="submit"  value="发表" /> -->
		   <img border="0" src="__PUBLIC__/site/images/liuyan-sub-btn.jpg" onclick="submit_leavemsg()" style="cursor: pointer;"/>
		   </td>
		   </tr>
		   </table>
		   </form>
		   </div>
        </div>
	</div>
	
	<!--imenux end-->
<div class="cls"></div>
<script src="__PUBLIC__/site/js/jsddm.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8" src="__PUBLIC__/admin/kindeditor/kindeditor-min.js"></script>
<script type="text/javascript" charset="utf-8" src="__PUBLIC__/admin/kindeditor/lang/zh_CN.js"></script>
<script type="text/javascript">
var editor;
KindEditor.ready(function(K) {
	editor = K.create('#msg-content', {
			resizeType : 0,
			allowPreviewEmoticons : true,
			allowImageUpload : false,
			pasteType : 1,
			newlineTag: 'br',
			items : [ 'image', 'emoticons']
		});
	});

function submit_leavemsg(){
	var lf = $("#leavemsg-form").get(0);
    var msg = '';
	if(lf.cname.value == '' )
	{
		msg += "姓名不可以为空 -- \n";
	}
    var contact = lf.contact.value;
	if(contact == '')
	{
		msg += "联系方式不可以为空 -- \n";
	}
	var chp = /^[0-9a-zA-z-\.]+/;
    if(!chp.test(contact)){
    	msg += "联系方式格式不正确 -- \n";
    }
    
	if(editor.text().length < 2)
	{
		msg += "留言内容不可以小于两个字符 -- \n";
	} 

	if(msg != '')
	{
		alert(msg);
	}
	else
	{
		lf.msg.value = editor.text();
		lf.submit();
	}

	
}
</script>
  <!--底部-->
<include file="Public:foot" />
<!--END-->
</body></html>