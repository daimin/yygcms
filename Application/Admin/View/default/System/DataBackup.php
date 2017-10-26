<include file="Public:header" />
<div style="min-width:780px">
 <table width="98%" border="0" cellpadding="0" cellspacing="0" style="margin-top:10px" bgcolor="#D6D6D6" align="center">
  <tr>
   <td bgcolor="#FFFFFF" width="100%">
<div id="_mainsearch">
     
     <table width="99%" border="0" cellpadding="3" cellspacing="1" bgcolor="#D6D6D6">
  <tbody><tr> 
    <td height="19" colspan="7" background="__PUBLIC__/admin/images/tbg.gif" bgcolor="#E7E7E7">
    	<table width="96%" border="0" cellspacing="1" cellpadding="1">
        <tbody><tr> 
          <td width="24%" style="padding-left:10px;"><strong>数据备份</strong></td>
          <td width="76%" align="right">
          </td>
        </tr>
      </tbody></table>
    </td>
  </tr>
  <form name="form1" action="__URL__/doBackup" method="post">
  <tr align="center" bgcolor="#23262e" height="25" style="color:#fff;font-weight: bold;">
    <td height="24" width="5%">选择</td>
    <td width="20%">表名</td>
    <td width="8%">记录数</td>
    <td width="10%">大小</td>
    <td width="15%">创建时间</td>
    <td width="15%">编码类型</td>
    <td width="10%">引擎类型</td>
  </tr>
  
    <volist name="list" id="item">
	    <tr align="center" bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#EEEEEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="24">
    <td>
    	<input type="checkbox" name="tables[]" value="{$item.name}" class="np"> 
    </td>
    <td> 
      {$item.name}    </td>
    <td> 
      {$item.rows}     </td>
    <td>
    {$item.data_length}     </td>
    <td>
    	{$item.create_time}   </td>
    <td> 
      {$item.collation}    </td>
    <td> 
      {$item.engine}    </td>
    </tr> 
  </volist>
    <tr bgcolor="#ffffff"> 
      <td height="24" colspan="7">
      	&nbsp; 
       <a href="javacript:void(0)" onclick="checkAll('tables[]')" class="coolbg">全选/反选</a>
       &nbsp;
       每个分卷的大小：<input type="text" name="filesize" value="2048" size="5" style="color:red"> K 
       &nbsp;
       <input type="submit" name="Submit" value="备份" class="coolbg np">
      </td>
  </tr>
  </form>
</tbody>
     </table>
   </td>
  </tr>
 </table>
</div>

<script type="text/javascript">
var isAllChecked = false;
function checkAll(name){
  
    if(window.isAllChecked == false){
        $("input[name='" + name + "']").each(function(i,o){
           $(o).attr("checked", true);
           window.isAllChecked = true;
        });
    }else{
        $("input[name='" + name + "']").each(function(i,o){
           $(o).attr("checked", false);
           window.isAllChecked = false;
        });
    }
    
}
</script>
<include file="Public:footer" />

