<include file="Public:header" />
<div style="min-width:780px">
 <table width="98%" border="0" cellpadding="0" cellspacing="0" style="margin-top:10px" bgcolor="#D6D6D6" align="center">
  <tr>
   <td bgcolor="#FFFFFF" width="100%">
     
     <table width="99%" border="0" cellpadding="3" cellspacing="1" bgcolor="#D6D6D6">
  <tbody><tr> 
    <td height="19" colspan="7" background="__PUBLIC__/admin/images/tbg.gif" bgcolor="#E7E7E7">
    	<table width="96%" border="0" cellspacing="1" cellpadding="1">
        <tbody><tr> 
          <td width="24%" style="padding-left:10px;"><strong>用户列表</strong></td>
          <td width="76%" align="right">
          </td>
        </tr>
      </tbody>
        </table>
    </td>
  </tr>
  <form name="form1" action="__URL__/doBackup" method="post">
  <tr align="center" bgcolor="#009900" height="25" style="color:#fff;font-weight: bold;">
    <td height="24" width="5%">选择</td>
    <td width="30%">账号</td>
    <td width="10%">创建时间</td>
    <td width="10%">最后登录时间</td>
    <td width="8%">状态</td>
    <td width="8%">角色</td>
    <td width="10%">操作</td>
  </tr>
  
  <volist name="users" id="user">
	    <tr align="center" bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#EEFFEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="24">
    <td>
    	<input type="checkbox" name="ids[]" value="{$user.name}" class="np"> 
    </td>
    <td> 
      {$user.name}  
    </td>
    <td> 
      {$user.createtime}  
    </td>
    <td> 
      {$user.lastlogintime}  
    </td>
    <td> 
    <?php if( session(C("__YYG_AUTH_NAME__")) != $user['name']){?>
    <if condition="($user.status eq 1) ">
       <span onclick="changeAdminStatus(0,'<?php echo $user['name']?>')" style="color:green;cursor:pointer;">[正常] </span>
    <else /> <span onclick="changeAdminStatus(1,'<?php echo $user['name']?>')" style="color:red;cursor:pointer;">[停用]</span>
   </if>
   <?php }else{?>
   <if condition="($user.status eq 1) "> <span  style="color:green;">正常</span>
    <else /> <span  style="color:red;">停用</span>
   </if>
   <?php }?>
 </td>
    <td>
    <?php if(session(C("__YYG_AUTH_NAME__")) != $user['name']){?>
          <select name="role" onchange="changeRole(this, '<?php echo $user['name']?>')" >
               <option value="{$Think.config.__YYG_EDITOR__}" <?php if($user['role'] == C("__YYG_EDITOR__")) echo ' selected="selected" ';?> >{$Think.config.__YYG_EDITOR__|roleShow=### }</option>
               <option value="{$Think.config.__YYG_ADMIN__}" <?php if($user['role'] == C("__YYG_ADMIN__")) echo ' selected="selected" ';?> >{$Think.config.__YYG_ADMIN__|roleShow=### }</option>
           </select>
    <?php }else{?>
    <?php echo roleShow($user['role'])?>
    <?php }?>
      
    </td>
    <td>
        <a style="text-decoration: underline;" href="__URL__/changePassword/name/{$user.name}" title="修改用户密码">修改密码</a>    
    </td>
    
    </tr> 
  </volist>
    <tr bgcolor="#ffffff"> 
      <td height="24" colspan="7" >
      	&nbsp; 
       <a href="javacript:void(0)" onclick="checkAll('ids[]')" class="coolbg">全选/反选</a>
       <input type="button" name="delBtn" value="删除" onclick="delAdmin('ids[]')" class="coolbg np">
      </td>
  </tr>

</tbody></table>
    </form></td>
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

function delAdmin(as){
   var ass = $("input[name='" + as + "']").toArray();
   if(ass.length <= 0) return false;
   var asNames = [];
   for(var i = 0, len = ass.length; i < len; i++){
       if(ass[i].checked){
           asNames[asNames.length] = ass[i].value;
       }
       
   }
   
   if(asNames.length <= 0){
       alert("选择一个要删除的项");
       return false;
   }
   
   if(window.confirm("确认删除所选项？")){
        var args = {
          "names":asNames.join(',')
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

function changeAdminStatus(s, name){
	var d = "确定激活该用户？";
	if(s == 0){
		d = "确定停用该用户？";
	}
	if(window.confirm(d)){
		var args = {
		          "name":name,
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

function changeRole(o, name){
	if(window.confirm("确定修改该用户的角色权限？")){
		var args = {
		          "name":name,
		          "role":o.value
		        };
		        $.post('__URL__/changeRole',args,function(data){
		              if(data == 1){
		                  window.location.reload();
		              }else{
		                  alert(data);
		              }
		        });
    }
}
</script>
<include file="Public:footer" />

