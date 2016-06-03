<include file="Public:header" />
<div style="min-width:780px">
 <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D6DDD6" align="center">
  <tr>
   <td height="28" background="__PUBLIC__/admin/images/tbg.gif" style="padding-left:10px;"><b>编辑招贤纳士内容： (加*为必填)</b>
   </td>
  </tr>
 </table>
   
 <table width="98%" border="0" cellpadding="0" cellspacing="0" style="margin-top:10px" align="center">
  <tr>
   <td bgcolor="#FFFFFF" width="100%">
   <form action="__URL__/editOneSite/type/<?php echo I("type")?>" method="post" name="form1" >
   <input type="hidden" value="{$content.id}" name="id" />
   <input type="hidden" value="{$content.type}" name="type" />
   <div id="_mainsearch">
     
     <table class="edit-tab" width="100%" style='' id="" border="0" cellspacing="0" cellpadding="1">
      
      <tr >
       <td class="head">*标题： </td>
       <td class="tail"><input type='text' name="title" value="{$content.title}" style='width:60%'></td>
       
      </tr>
      <tr >
       <td class="head ">*内容： </td>
       <td class="tail"> <textarea name="content" style='width:80%' rows="28" id="mp_content">{$content.content}</textarea></td>
      </tr>
     </table>

</div>
     <table width="100%" border="0" cellspacing="1" cellpadding="1"  style="border:1px solid #cfcfcf;border-top:none;">
      <tr bgcolor="#BAF095">
       <td height="50" colspan="3"><table width="98%" border="0" cellspacing="1" cellpadding="1">
         <tr>
          <td width="11%">&nbsp;</td>
          <td width="11%"><input name="imageField" type="image" src="__PUBLIC__/admin/images/button_ok.gif" width="60" height="22" border="0" class="np"></td>
          <td width="78%"></td>
         </tr>
        </table></td>
      </tr>
     </table>
    </form></td>
  </tr>
 </table>
</div>
<link rel="stylesheet" href="__PUBLIC__/admin/kindeditor/themes/simple/simple.css" />
<script type="text/javascript" charset="utf-8" src="__PUBLIC__/admin/kindeditor/kindeditor-min.js"></script>
<script type="text/javascript" charset="utf-8" src="__PUBLIC__/admin/kindeditor/lang/zh_CN.js"></script>
<link rel="stylesheet" href="__PUBLIC__/admin/uploadify/uploadify.css" />
<script type="text/javascript" src="__PUBLIC__/admin/uploadify/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/admin/uploadify/swfobject.js"></script>
<script type="text/javascript" src="__PUBLIC__/admin/uploadify/jquery.uploadify.v2.1.4.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/admin/js/imgpreview.min.jquery.js"></script>
<script type="text/javascript">
		var editor;
		KindEditor.ready(function(K) {
			editor = K.create('#mp_content', {
					resizeType : 1,
					allowPreviewEmoticons : false,
					allowImageUpload : false,
					items : [
								'source','|','formatblock','fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
								'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
								'insertunorderedlist', '|', 'emoticons', 'image', 'link', 'table']
				});
			});
		
</script>
<include file="Public:footer" />

