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
   <td height="28" background="__PUBLIC__/admin/images/tbg.gif" style="padding-left:10px;"><b>添加家装追踪用户： (加*为必填)</b><a class="return-link" href="javascript:window.history.go(-1)">返回列表</a></td>
  </tr>
  
 </table>
 <table width="98%" border="0" cellpadding="0" cellspacing="0" style="margin-top:10px" align="center" >
  <tr>
   <td bgcolor="#FFFFFF" width="100%">
   <form action="__URL__/add/" method="post" name="form1" enctype="multipart/form-data">
   <div id="_mainsearch">
     
     <table class="edit-tab" width="100%" style='' id="" border="0" cellspacing="0" cellpadding="1">
      <tr >
       <td class="head">*家装用户名： </td>
       <td class="tail" colspan="2"><input type='text' name="name" value="" size="40" AUTOCOMPLETE="off"></td>
      </tr>
      <tr >
       <td class="head">*密码： </td>
       <td class="tail" colspan="2" ><input type='password' name="password" value="" size="40" AUTOCOMPLETE="off"></td>
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
<script type="text/javascript">
		$(document).ready(function() {
			 
	   });
		
</script>
<include file="Public:footer" />

