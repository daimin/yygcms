<include file="Public:header" />
<div style="min-width:780px">
<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D6DDD6" align="center">
  <tr>
   <td height="28" background="__PUBLIC__/admin/images/tbg.gif" style="padding-left:10px;text-align:center;">
   <a href="__URL__/addHomeDeco/uid/<?php echo $homeUser['id']?>" class="coolbg" style="display: block;margin:0 auto;width:100px;"> 添加家装追踪资料 </a>
   </td>
  </tr>
  
 </table>
 <table width="98%" border="0" cellpadding="0" cellspacing="0" style="margin-top:10px" bgcolor="#D6D6D6" align="center">
  <tr>
   <td bgcolor="#FFFFFF" width="100%">
<div id="_mainsearch">
  
     <table width="99%" border="0" cellpadding="3" cellspacing="1" bgcolor="#D6D6D6">
  <tbody><tr> 
    <td height="19" colspan="10" background="__PUBLIC__/admin/images/tbg.gif" bgcolor="#E7E7E7">
    	<table width="96%" border="0" cellspacing="1" cellpadding="1">
        <tbody><tr> 
          <td width="24%" style="padding-left:10px;"><strong>
          <a style="color:#690;text-decoration: underline;" href="__URL__/index/">家装追踪用户列表</a><span class="class-arrow">>></span>[<span style="color:blue;"><?php echo $homeUser['name']?></span>]的家装列表</strong></td>
          <td width="76%" align="right">
          </td>
        </tr>
      </tbody></table>
    </td>
  </tr>
  <tr align="center" bgcolor="#009900" height="25" style="color:#fff;font-weight: bold;">
    <td height="24" width="5%">选择</td>
    <td width="2%">ID</td>
    <td width="15%"><a href="javascript:void(0)" title="点击排序" onclick="sortContent('{$sort}')">上传日期</a>  </td>
    <td width="15%">简要说明</td>
    <td width="15%">附件个数</td>
    <td width="15%" nowrap="nowrap">操作</td>
  </tr>
 
  <volist name="homeDecos" id="item">
	    <tr align="center" bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#EEFFEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="24">
    <td>
    	<input type="checkbox" name="ids[]" value="{$item.id}" class="np"> 
    </td>
    <td align="center"> 
      {$item.id}  
    </td>
    <td align="left"> 
      {$item.date}  
    </td>
     <td align="left"> 
      {$item.caption}  
    </td>
    <td> 
      {$item.attac_count}  
    </td>
    <td>
        <a style="text-decoration: underline;" href="__URL__/editHomeDeco/hid/{$item.id}" title="编辑">编辑</a>    
    </td>
    </tr> 
  </volist>
    <tr bgcolor="#ffffff"> 
      <td height="24" colspan="10" >
      	&nbsp; 
       <a href="javacript:void(0)" onclick="checkAll('ids[]')" class="coolbg">全选/反选</a>
       <input type="button" name="delBtn" value="删除" onclick="delContent('ids[]')" class="coolbg np">
       <div style="float:right">
       
       <form name="o-form" method="get" action="__URL__/index/type/360taocan">
           <span class="info">名称，创建时间模糊查询</span>
	       <input type="text" name="o_keyword" />
	       <input type="submit"  value=" 筛选 " />
       </form>
       </div>
      </td>
  </tr>
  
 <tr align="right" bgcolor="#F9FCEF">
	<td height="36" colspan="11" align="center" id="pages">
		{$page}
	</td>
</tr>



</tbody></table>
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

function delContent(as){
   var ass = $("input[name='" + as + "']").toArray();
  
   if(ass.length <= 0) return false;
   var asIdss = [];
   for(var i = 0, len = ass.length; i < len; i++){
       if(ass[i].checked){
    	   asIdss[asIdss.length] = ass[i].value;
       }
       
   }
   
   if(asIdss.length <= 0){
       alert("选择一个要删除的项");
       return false;
   }

   if(window.confirm("确认删除所选项？")){
        var args = {
          "ids":asIdss.join(',')
        };
        $.post('__URL__/delHomeDeco',args,function(data){
              if(data == 1){
                  window.location.reload();
              }else{
                  alert(data);
              }
        });
   }
   
}




function sortContent(sort){
	if(sort == 'desc'){
         sort = 'asc';
    }else{
   	     sort = 'desc';
    }
	var href = window.location.href;
	if(href.indexOf('&') != -1){
		window.location = window.location.href + '&1=1&sort='+sort;
	}else{
		window.location = '<?php echo __ACTION__?>/uid/<?php echo $homeUser['id']?>/sort/' + sort;
	}
	
}


</script>
<include file="Public:footer" />

