<include file="Public:header" />
<div style="min-width:780px">
<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D6DDD6" align="center">
  <tr>
   <td height="28" background="__PUBLIC__/admin/images/tbg.gif" style="padding-left:10px;text-align:center;">
   <a href="__URL__/add/type/Gongchengbaozhang/" class="coolbg" style="display: block;margin:0 auto;width:100px;"> 添加工程保障内容 </a>
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
          <td width="24%" style="padding-left:10px;"><strong>工程保障内容列表</strong></td>
          <td width="76%" align="right">
          </td>
        </tr>
      </tbody></table>
    </td>
  </tr>
  <tr align="center" bgcolor="#009900" height="25" style="color:#fff;font-weight: bold;">
    <td height="24" width="5%">选择</td>
    <td width="3%" nowrap="nowrap">ID</td>
    <td width="25%">类型</td>
    
    <td width="15%"><a href="javascript:void(0)" title="点击排序" onclick="sortContent('{$sort}')">创建时间</a>  </td>
    <td width="15%">修改时间</td>
    <td width="8%">状态</td>
    <td width="5%" nowrap="nowrap">附件</td>
    <td width="5%" nowrap="nowrap">排序</td>
    <td width="8%" nowrap="nowrap">操作</td>
  </tr>
  
  <volist name="list" id="item">
	    <tr align="center" bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#EEFFEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="24">
    <td>
    	<input type="checkbox" name="ids[]" value="{$item.id}" class="np"> 
    </td>
    <td>{$item.id}</td>
    <td align="left"> 
      {$item.title}  
    </td>
    <td> 
      {$item.createtime}
    </td>
    <td> 
      {$item.modifytime}  
    </td>
    <td> 
    <if condition="($item.status eq 1) ">
       <span onclick="changeContentStatus(0,'<?php echo $item['id']?>')" style="color:green;cursor:pointer;">[发布] </span>
    <else /> <span onclick="changeContentStatus(1,'<?php echo $item['id']?>')" style="color:red;cursor:pointer;">[草稿]</span>
   </if>
 </td>
 <td> 
      {$item.attac_count}  
    </td>
     <td>  
      <input type="text" size="2" name="corder_{$item.id}" onblur="changeContentOrder(this, '__URL__')" value="{$item.order}" />
    </td>
    <td>
        <a style="text-decoration: underline;" href="__URL__/edit/cid/{$item.id}" title="编辑">编辑</a>    
    </td>
    </tr> 
  </volist>
    <tr bgcolor="#ffffff"> 
      <td height="24" colspan="10" >
      	&nbsp; 
       <a href="javacript:void(0)" onclick="checkAll('ids[]')" class="coolbg">全选/反选</a>
       <input type="button" name="delBtn" value="删除" onclick="delContent('ids[]')" class="coolbg np">
       <div style="float:right">
       
       <form name="o-form" method="get" action="__URL__/index/type/Gongchengbaozhang">
           <span class="info">标题，创建时间模糊查询</span>
	       <select name="o_status">
	           <option value="">所有</option>
	           <option value="1">发布</option>
	           <option value="0">草稿</option>
	       </select>
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
        $.post('__URL__/del',args,function(data){
              if(data == 1){
                  window.location.reload();
              }else{
                  alert(data);
              }
        });
   }
   
}

function changeContentStatus(s, id){
	var d = "确定将该文档发布？";
	if(s == 0){
		d = "确定该文档置为草稿？";
	}
	if(window.confirm(d)){
		var args = {
		          "id":id,
		          "status":s
		        };
		        $.post('__URL__/changeStatus',args,function(data){
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
		window.location = window.location.href + '/sort/'+sort;
	}
	
}


</script>
<include file="Public:footer" />

