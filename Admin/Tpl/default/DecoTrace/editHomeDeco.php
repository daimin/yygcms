<include file="Public:header" />
<style type="text/css">

.upimg-div{
	height:auto !important;
	height:200px; /*假定最低高度是200px*/
	min-height:200px; 
}

</style>
<div style="min-width:780px">
 <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D6DDD6" align="center">
  <tr>
   <td height="28" background="__PUBLIC__/admin/images/tbg.gif" style="padding-left:10px;"><b>编辑家装追踪资料： (加*为必填)</b><a class="return-link" href="javascript:window.history.go(-1)">返回列表</a></td>
  </tr>
  
 </table>
 <table width="98%" border="0" cellpadding="0" cellspacing="0" style="margin-top:10px" align="center">
  <tr>
   <td bgcolor="#FFFFFF" width="100%">
   <form action="__ACTION__" method="post" name="form1" >
   <input type="hidden" value="<?php echo $homeUser['id']?>" name="userid" />
   <input type="hidden" value="<?php echo $homedeco['id']?>" name="hid" />
   <div id="_mainsearch">
     
     <table class="edit-tab" width="100%" style='' id="" border="0" cellspacing="0" cellpadding="1">
      <tr >
       <td class="head">用户： </td>
       <td class="tail" colspan="2"><input type='text' name="user" style="border:1px solid #ccc;" value="<?php echo $homeUser['name']?>" readonly="readonly" style='width:30%'></td>
      </tr>
      <tr >
       <td class="head">日期： </td>
       <td class="tail" colspan="2"><input type='text' name="date" style="border:1px solid #ccc;" value="<?php echo $homedeco['date']?>" readonly="readonly" style='width:30%'></td>
      </tr>
      <tr>
		<td class="head">描述：</td>
		<td class="tail" colspan="2"><textarea name="caption" style="width:60%" rows="5"><?php echo $homedeco['caption']?></textarea></td>
      </tr>
      <tr >
       <td class="head" nowrap="nowrap">上传图片：</td>
       <td class="tail"> <input type="file"  name="mp_uploadImg" value="" id="mp_uploadImg" style="visibility: hidden"/>
       <input type="hidden"  name="mp_uploadImg_ids" value="" id="mp_uploadImg_ids"/>
       <div id="update_img_list">
       </div>
       </td>
       
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
<link rel="stylesheet" href="__PUBLIC__/admin/uploadify/uploadify.css" />
<script type="text/javascript" src="__PUBLIC__/admin/uploadify/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/admin/uploadify/swfobject.js"></script>
<script type="text/javascript" src="__PUBLIC__/admin/uploadify/jquery.uploadify.v2.1.4.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/admin/js/imgpreview.min.jquery.js"></script>
<script type="text/javascript">
		
		$(document).ready(function() {
			  $('#mp_uploadImg').uploadify({
				    'uploader'  : '__PUBLIC__/admin/uploadify/uploadify.swf?var='+(new Date()).getTime(),
				    'script'    : '__URL__/upload',
				    'cancelImg' : '__PUBLIC__/admin/uploadify/cancel.png',
				    'folder'    : '<?php echo __ROOT__.C("__MP_UPLOAD_DIR__");?>',
				    'auto'      : true,
				    'multi'     : true,
				    'queueSizeLimit' : 8,
				    'simUploadLimit':1,
				    'sizeLimit' : 2097152,
				    'fileExt'   : '{$attachAllow}',
				    'fileDesc'  : '请选择图片文件', 
				    
				    'onComplete'  : function(event, ID, fileObj, response, data) {
						var jsondata = response.toString();
						try{
						   jsondata = eval("("+jsondata+")");
						}catch(e){
							alert(jsondata);
							return ;
						}
						
				
						$("#mp_uploadImg_ids").val($("#mp_uploadImg_ids").val() + jsondata['id'] + ',');
						renderImgList(jsondata);
						renderImgLink();
				   }
			  });

			  
			  getAttac();
	   });

		function renderImgList(jsondata){
			$("#update_img_list").append('<div class="upimg-div"><a class="img-link" style="display:block;float:left;width:250px;" target="_blank" href="' + jsondata['path'] + '">' + 
					jsondata['name'] + 
					'</a>' +
					'<a href="javascript:void(0)" class="img-del" onclick="deleteUpImg(this, \'' + jsondata['id'] + '\')">' + 
					'<img src="__PUBLIC__/admin/images/close.gif" border="none"></a>' + 
					'' +
					'</div>');
			renderImgLink();
			
		}

		function getAttac(){
			  var args = {
					     "id":'<?php echo $homedeco['id']?>',
					  };
					  $.post('__URL__/getAttacs', args,function(data){
						  if(data){
							  console.log(data);
							  var jdatas = eval("("+data+")");
							  
							  if(jdatas && jdatas.length > 0){	
								  
								  for(var i = 0, len = jdatas.length; i < len; i++){
									
									  renderImgList(jdatas[i]);
									  
							      }  
								  renderImgLink();
								  
							  }
							  
						  }	  
						  
					  });
	     }	

	function deleteUpImg(o, attId){
		var args = {
		          "id":attId,
		        };
		        $.post('__URL__/delAttr',args,function(data){
		              if(data == 1){
		                  $(o).parent().remove();
		              }else{
		                  alert(data);
		              }
		});
    }
				
		
</script>
<include file="Public:footer" />

