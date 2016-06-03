<include file="Public:header" />
<style type="text/css">
<!--
.upimg-div{
	height:auto !important;
	height:200px; /*假定最低高度是200px*/
	min-height:200px; 
}
-->
</style>
<div style="width:100%">
 <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D6DDD6" align="center">
  <tr>
   <td height="28" background="__PUBLIC__/admin/images/tbg.gif" style="padding-left:10px;"><b>回复</b>
   <a class="return-link" href="javascript:window.close()">关闭</a></td>
  </tr>
  
 </table>
 <table width="98%" border="0" cellpadding="0" cellspacing="0" style="margin-top:10px" align="center">
  <tr>
   <td bgcolor="#FFFFFF" width="100%">
   <form action="__URL__/reply" method="post" name="form1" >
   <input type="hidden" value="{$cid}" name="id" />
   <div id="_mainsearch">
     <table class="edit-tab" width="100%" style='' id="" border="0" cellspacing="0" cellpadding="1">
      <tr >
       <td>
       <textarea rows="18" name="recontent" id="re-content" style="width:600px;"><?php echo stripslashes(htmlspecialchars_decode($msg['recontent'], ENT_QUOTES));?></textarea>
       </td>
      </tr>
     </table>
</div>
     <table width="100%" border="0" cellspacing="1" cellpadding="1"  style="border:1px solid #cfcfcf;border-top:none;">
      <tr bgcolor="#BAF095">
       <td height="50" colspan="3"><table width="98%" border="0" cellspacing="1" cellpadding="1">
         <tr>
          <td width="11%">&nbsp;</td>
          <td width="11%">
          <input name="imageField" style="padding:6px 8px" type="submit" value=" 回 复 " width="60" height="22" border="0" class="np">
          </td>
          <td width="78%"></td>
         </tr>
        </table></td>
      </tr>
     </table>
    </form></td>
  </tr>
 </table>
</div>
<script type="text/javascript" src="__PUBLIC__/admin/uploadify/jquery-1.4.2.min.js"></script>
<script type="text/javascript" charset="utf-8" src="__PUBLIC__/admin/kindeditor/kindeditor-min.js"></script>
<script type="text/javascript" charset="utf-8" src="__PUBLIC__/admin/kindeditor/lang/zh_CN.js"></script>
<script type="text/javascript">

var editor;
KindEditor.ready(function(K) {
	editor = K.create('#re-content', {
			resizeType : 0,
			allowPreviewEmoticons : true,
			allowImageUpload : false,
			pasteType : 1,
			newlineTag: 'br',
			items : [ 'image', 'emoticons'],
			width : "96%"
		});
	});

		
</script>
<include file="Public:footer" />

