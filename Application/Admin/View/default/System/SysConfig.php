<include file="Public:header" />
<div style="min-width:780px">
 <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D6DDD6" align="center">
  <tr>
   <td height="28" background="__PUBLIC__/admin/images/tbg.gif" style="padding-left:10px;"><b>系统配置参数：</b></td>
  </tr>
  
 </table>
 <table width="98%" border="0" cellpadding="0" cellspacing="0" style="margin-top:10px" bgcolor="#D6D6D6" align="center">
  <tr>
   <td bgcolor="#FFFFFF" width="100%">
   <form action="__URL__/updateCfg" method="post" name="form1">
<div id="_mainsearch">
     
     <table width="100%" style='' id="" border="0" cellspacing="1" cellpadding="1" bgcolor="#cfcfcf">
      <tr align="center" bgcolor="#23262e" height="25" style="color:#fff;font-weight: bold;">
       <td width="300">名称</td>
       <td>参数值</td>
       <td width="220">说明</td>
      </tr>
      
      <tr align="center" height="25" bgcolor="#ffffff" onMouseMove="javascript:this.bgColor='#EEEEEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';">
       <td width="300">网站网址： </td>
       <td align="left" style="padding:3px;"><input type='text' name="siteUrl" value="{$options->siteUrl}" style='width:80%'></td>
       <td class="info">网站根目录</td>
      </tr>
       <tr align="center" height="25" bgcolor="#ffffff" onMouseMove="javascript:this.bgColor='#EEEEEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';">
       <td width="300">管理员邮箱： </td>
       <td align="left" style="padding:3px;"><input type='text' name="mail" value="{$options->mail}" style='width:80%'></td>
       <td class="info">管理员邮箱</td>
      </tr>
      <tr align="center" height="25" bgcolor="#ffffff" onMouseMove="javascript:this.bgColor='#EEEEEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';">
       <td width="300">显示文章数： </td>
       <td align="left" style="padding:3px;"><input type='text' name='pageSize' value="{$options->pageSize}" style='width:80%'></td>
       <td class="info">每页显示多少文章</td>
      </tr>
      <tr align="center" height="25" bgcolor="#ffffff" onMouseMove="javascript:this.bgColor='#EEEEEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';">
       <td width="300">网站名称： </td>
       <td align="left" style="padding:3px;"><input type='text' name='siteName' value="{$options->siteName}" style='width:80%'></td>
       <td class="info">网站title信息(非页面中)</td>
      </tr>
      <tr align="center" height="25" bgcolor="#ffffff" onMouseMove="javascript:this.bgColor='#EEEEEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';">
       <td width="300">网站副标题： </td>
       <td align="left" style="padding:3px;"><input type='text' name='seoName' value="{$options->seoName}" style='width:80%'></td>
       <td class="info">网站副标题，SEO名称(非页面中)</td>
      </tr>
      <tr align="center" height="25" bgcolor="#ffffff" onMouseMove="javascript:this.bgColor='#EEEEEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';">
       <td width="300">关键字： </td>
       <td align="left" style="padding:3px;"><input type='text' name='keywords' value="{$options->keywords}" style='width:80%'></td>
       <td class="info">多关键字请用","分开</td>
      </tr>
      <tr align="center" height="25" bgcolor="#ffffff" onMouseMove="javascript:this.bgColor='#EEEEEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';">
       <td width="300">网站描述： </td>
       <td align="left" style="padding:3px;"><textarea style='width:80%' rows="4" name='description'>{$options->description}</textarea> </td>
       <td class="info">网站description信息</td>
      </tr>
      <tr align="center" height="25" bgcolor="#ffffff" onMouseMove="javascript:this.bgColor='#EEEEEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';">
       <td width="300">附件设置： </td>
       <td align="left" style="padding:3px;"><input type='text' name='attachAllow' value="{$options->attachAllow}" style='width:80%'> </td>
       <td class="info">容许上传的文件类型。<br/>(请用,号分隔，请不要设置上传，诸如exe,cmd等危害安全的文件)</td>
      </tr>
      <tr align="center" height="25" bgcolor="#ffffff" onMouseMove="javascript:this.bgColor='#EEEEEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';">
       <td width="300">版权信息： </td>
       <td align="left" style="padding:3px;"><input type='text' name='copyright' value="{$options->copyright}" style='width:80%'> </td>
       <td class="info">显示的页尾的CopyRight信息</td>
      </tr>
     </table>

</div>
     <table width="100%" border="0" cellspacing="1" cellpadding="1"  style="border:1px solid #cfcfcf;border-top:none;">
      <tr bgcolor="#d3d6de">
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

