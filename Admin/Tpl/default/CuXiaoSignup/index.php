<include file="Public:header" />
<div style="min-width:780px">
 <table width="98%" border="0" cellpadding="0" cellspacing="0" style="margin-top:10px" bgcolor="#D6D6D6" align="center">
  <tr>
   <td bgcolor="#FFFFFF" width="100%">
<div id="_mainsearch">
  
     <table width="99%" border="0" cellpadding="3" cellspacing="1" bgcolor="#D6D6D6">
  <tbody><tr> 
    <td height="19" colspan="10" background="__PUBLIC__/admin/images/tbg.gif" bgcolor="#E7E7E7">
    	<table width="96%" border="0" cellspacing="1" cellpadding="1">
        <tbody><tr> 
          <td width="24%" style="padding-left:10px;"><strong>促销在线报名列表</strong></td>
          <td width="76%" align="right">
          </td>
        </tr>
      </tbody></table>
    </td>
  </tr>
  <tr align="center" bgcolor="#009900" height="25" style="color:#fff;font-weight: bold;">
    <td height="24" width="5%">选择</td>
    <td width="3%" nowrap="nowrap">ID</td>
    <td width="30%">姓名</td>
    <td width="15%">电话  </td>
    <td width="20%">手机号码</td>
    <td width="12%">报名时间</td>
    <td width="12%" nowrap="nowrap">状态</td>
  </tr>
  
  <volist name="signups" id="signup">
	    <tr align="center" bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#EEFFEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="24">
    <td>
    	<input type="checkbox" name="ids[]" value="{$signup.id}" class="np"> 
    </td>
    <td>{$signup.id}</td>
    <td align="left"> 
      {$signup.name}  
    </td>
    <td  align="left"> 
      {$signup.tel}
    </td>
    <td> 
      {$signup.phone}
    </td>
    <td> 
      {$signup.created}  
    </td>
    <td> 
    <if condition="($signup.status eq 1) "> 
       <span onclick="changeSignupStatus(0,'<?php echo $signup['id']?>')" style="color:green;cursor:pointer;">[已审核] </span>
    <else /> <span onclick="changeSignupStatus(1,'<?php echo $signup['id']?>')" style="color:red;cursor:pointer;">[待审核]</span>
   </if>
    </td>
    
    </tr> 
  </volist>
    <tr bgcolor="#ffffff"> 
      <td height="24" colspan="10" >
      	&nbsp; 
       <a href="javacript:void(0)" onclick="checkAll('ids[]')" class="coolbg">全选/反选</a>
       <input type="button" name="delBtn" value="删除" onclick="delContent('ids[]')" class="coolbg np">
       <div style="float:right">
       
       <form name="o-form" method="get" action="__URL__/index/type/index">
           <span class="info">姓名，报名时间模糊查询</span>
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

function changeSignupStatus(s, id){
	var d = "确定审核通过该文档？";
	if(s == 0){
		d = "确定否决该文档？";
	}
	if(window.confirm(d)){
		var args = {
		          "id":id,
		          "status":s
		        };
        console.log(args);
		        $.post('__URL__/changeStatus',args,function(data){
		              if(data == 1){
		                  window.location.reload();
		              }else{
			              alert("操作失败");
		              }
		        });
    }
}



</script>
<include file="Public:footer" />
