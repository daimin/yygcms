<include file="Public:header" />
<div style="min-width:780px">
 <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D6DDD6" align="center">
  <tr>
   <td height="28" background="__PUBLIC__/admin/images/tbg.gif" style="padding-left:10px;"><b>修改用户密码：</b></td>
  </tr>
  
 </table>
 <table width="98%" border="0" cellpadding="0" cellspacing="0" style="margin-top:10px" bgcolor="#D6D6D6" align="center">
  <tr>
   <td bgcolor="#FFFFFF" width="100%">
   <form action="__URL__/changePassword" method="post" name="form1">
<div id="_mainsearch">
     
     <table width="100%" style='' id="" border="0" cellspacing="1" cellpadding="1" bgcolor="#cfcfcf">
      <tr align="center" bgcolor="#009900" height="25" style="color:#fff;font-weight: bold;">
       <td width="300">名称</td>
       <td>参数值</td>
       <td width="220">说明</td>
      </tr>
      
      <tr align="center" height="25" bgcolor="#ffffff" onMouseMove="javascript:this.bgColor='#EEFFEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';">
       <td width="300">账号： </td>
       <td align="left" style="padding:3px;"><input type='text' name="name" readonly="readonly" value="{$admin.name}" style='width:80%'></td>
       <td class="info">管理员账号</td>
      </tr>
      <tr align="center" height="25" bgcolor="#ffffff" onMouseMove="javascript:this.bgColor='#EEFFEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';">
       <td width="300">旧密码： </td>
       <td align="left" style="padding:3px;"><input type='password' name='oldpassword' value="" style='width:80%'></td>
       <td class="info">输入你的旧密码</td>
      </tr>
      <tr align="center" height="25" bgcolor="#ffffff" onMouseMove="javascript:this.bgColor='#EEFFEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';">
       <td width="300">新密码： </td>
       <td align="left" style="padding:3px;"><input type='password' name='password' value="" style='width:80%'></td>
       <td class="info">输入你的新密码</td>
      </tr>
      <tr align="center" height="25" bgcolor="#ffffff" onMouseMove="javascript:this.bgColor='#EEFFEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';">
       <td width="300">重复新密码： </td>
       <td align="left" style="padding:3px;"><input type='password' name='repassword' value="" style='width:80%'></td>
       <td class="info">重复输入你的新密码</td>
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
<include file="Public:footer" />

