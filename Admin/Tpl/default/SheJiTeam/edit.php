<include file="Public:header" />
<style type="text/css">
<!--
.upimg-div {
	height: auto !important;
	height: 200px; /*假定最低高度是200px*/
	min-height: 200px;
}
-->
</style>
<div style="min-width: 780px">
	<table width="98%" border="0" cellpadding="2" cellspacing="1"
		bgcolor="#D6DDD6" align="center">
		<tr>
			<td height="28" background="__PUBLIC__/admin/images/tbg.gif"
				style="padding-left: 10px;"><b>编辑设计团队内容： (加*为必填)</b><a
				class="return-link" href="javascript:window.history.go(-1)">返回列表</a></td>
		</tr>

	</table>
	<table width="98%" border="0" cellpadding="0" cellspacing="0"
		style="margin-top: 10px" align="center">
		<tr>
			<td bgcolor="#FFFFFF" width="100%">
				<form action="__URL__/edit/" method="post"
					name="form1" enctype="multipart/form-data">
				   <input type="hidden" value="{$designer.id}" name="id" /> 
					   <div id="_mainsearch">
     
					     <table class="edit-tab" width="100%" style='' id="" border="0" cellspacing="0" cellpadding="1">
					      <tr >
					       <td class="head">*姓名： </td>
					       <td class="tail" colspan="2"><input type='text' name="name" value="{$designer.name}" size="80" ></td>
					      </tr>
					      <tr >
					       <td class="head">*职称： </td>
					       <td class="tail" colspan="2" ><input type='text' name="rank" value="{$designer.rank}" size="40"></td>
					      </tr>
					      <tr>
					       <td class="head">*职位： </td>
					       <td class="tail" colspan="2" ><input type='text' name="title" value="{$designer.title}" size="40"></td>
					      </tr>
					       <tr>
					       <td class="head">*学历： </td>
					       <td class="tail" colspan="2" ><input type='text' name="degree" value="{$designer.degree}" size="40"></td>
					      </tr>
					       <tr>
					       <td class="head">*毕业院校： </td>
					       <td class="tail" colspan="2" ><input type='text' name="school" value="{$designer.school}" size="80"></td>
					      </tr>
					      <tr>
					       <td class="head">*从业时间： </td>
					       <td class="tail" colspan="2" ><input type='text' name="worktime" value="{$designer.worktime}" size="4"> 年</td>
					      </tr>
					       <tr >
					       <td class="head">组： </td>
					       <td class="tail" colspan="2" >
					       <select name="group">
					       <?php foreach($groups as $gk=>$gv){?>
					       <option <?php if($designer['group'] == $gk) echo ' selected="selected" ';?> value="<?php echo $gk?>"><?php echo $gv?></option>
					       <?php }?>
					       </select>
					       </td>
					      </tr>
					       <tr>
					       <td class="head">设计格言： </td>
					       <td class="tail" colspan="2" >
					       <textarea name="motto" rows="5" cols="80">{$designer.motto}</textarea>
					       </td>
					      </tr>
					      <tr>
					       <td class="head">擅长风格： </td>
					       <td class="tail" colspan="2" >
					       <textarea name="expert" rows="5" cols="80">{$designer.expert}</textarea>
					       </td>
					      </tr>
					         <tr >
					       <td class="head">照片： </td>
					       <td class="tail" colspan="2" ><input type='file' name="photo" value="{$designer.photo}" size="40"></td>
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
					<table width="100%" border="0" cellspacing="1" cellpadding="1"
						style="border: 1px solid #cfcfcf; border-top: none;">
						<tr bgcolor="#BAF095">
							<td height="50" colspan="3"><table width="98%" border="0"
									cellspacing="1" cellpadding="1">
									<tr>
										<td width="11%">&nbsp;</td>
										<td width="11%"><input name="imageField" type="image"
											src="__PUBLIC__/admin/images/button_ok.gif" width="60"
											height="22" border="0" class="np"></td>
										<td width="78%"></td>
									</tr>
								</table></td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>
</div>
<link rel="stylesheet" href="__PUBLIC__/admin/uploadify/uploadify.css" />
<script type="text/javascript"
	src="__PUBLIC__/admin/uploadify/jquery-1.4.2.min.js"></script>
<script type="text/javascript"
	src="__PUBLIC__/admin/uploadify/swfobject.js"></script>
<script type="text/javascript"
	src="__PUBLIC__/admin/uploadify/jquery.uploadify.v2.1.4.min.js"></script>
<script type="text/javascript"
	src="__PUBLIC__/admin/js/imgpreview.min.jquery.js"></script>
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
				    'sizeLimit' : 2097152,
				    'fileExt'   : '{$attachAllow}',
				    'fileDesc'  : '请选择图片文件', 
				    'simUploadLimit':8,
				    
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

		function getAttac(){
			  var args = {
					     "id":'<?php echo $designer['id']?>',
					  };
			  
					  $.post('__URL__/getAttacs', args,function(data){
						  if(data){
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

		function renderImgList(jsondata){
			var desc = '';
			if(jsondata['desc']){
				desc = jsondata['desc'];
			}
			$("#update_img_list").append('<div class="upimg-div"><a class="img-link" style="display:block;float:left;width:250px;" target="_blank" href="' + jsondata['path'] + '">' + 
					jsondata['name'] + 
					'</a>' +
					'<a href="javascript:void(0)" class="img-del" onclick="deleteUpImg(this, \'' + jsondata['id'] + '\')">' + 
					'<img src="__PUBLIC__/admin/images/close.gif" border="none"></a>' + 
					'' +
					'</div>');
			$("#mp_uploadImg_ids").val($("#mp_uploadImg_ids").val() + jsondata['id'] + ',');
			renderImgLink();
			
		}

		

		function deleteUpImg(o, attId){
		    if(!attId) return false;

			var args = {
			          "id":attId,
			          "cid":<?php echo $designer['id']?>
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

