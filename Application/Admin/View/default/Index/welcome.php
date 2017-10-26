<include file="Public:header" />
<style type="text/css">
.info-tab{
	border-collapse: separate;
	border-spacing: 1px;
	border-color: gray;
}
</style>
<div style="min-width:780px">
 <table class="info-tab" width="98%" border="0" cellpadding="0" cellspacing="0" style="margin-top:10px" bgcolor="#D6D6D6" align="center" >
  <tr align="center" bgcolor="#23262e" height="25" style="color:#fff;font-weight: bold;">
    <td colspan="2">系统信息</td>
  </tr>
  
    <volist name="info" id="v">
	    <tr align="center" bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#EEEEEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="24">
  <TD width="15%" align="left"  style="padding-left: 12px;">{$key}</TD>
<TD align="left" style="padding-left: 12px;">{$v}</TD>
    </tr> 
  </volist>

</tbody></table>
    </td>
  </tr>
 </table>
</div>
<include file="Public:footer" />