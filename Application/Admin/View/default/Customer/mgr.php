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
  <tr align="center" bgcolor="#23262e" height="25" style="color:#fff;font-weight: bold;">
    <td height="24" width="5%">选择</td>
    <td width="20%">邮箱|手机</td>
    <td width="20%">昵称</td>
    <td width="10%">创建时间</td>
    <td width="10%">最后登录时间</td>
    <td width="8%">状态</td>
    <td width="10%">操作</td>
  </tr>
  
  <volist name="customers" id="customer">
	    <tr align="center" bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#EEEEEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="24">
    <td>
    	<input type="checkbox" name="ids[]" value="{$user.name}" class="np"> 
    </td>
    <td> 
      {$customer.email}|{$customer.phone}
    </td>
    <td>
        {$customer.nickname}
    </td>
    <td> 
      {$customer.createtime}
    </td>
    <td> 
      {$customer.lastlogintime}
    </td>
    <td> 
    <if condition="($customer.status eq 1) ">
       <span onclick="changeCustomerStatus(0,'<?php echo $customer['id']?>')" style="color:green;cursor:pointer;">[正常] </span>
    <else />
        <span onclick="changeCustomerStatus(1,'<?php echo $customer['id']?>')" style="color:red;cursor:pointer;">[停用]</span>
   </if>
 </td>
    <td>
        <a style="text-decoration: underline;" href="javascript:void(0)" onclick="changePassword('{$customer.id}')" title="修改用户密码">修改密码</a>
        <a style="text-decoration: underline;" href="javascript:void(0)" title="详情">详情</a>
    </td>
    
    </tr> 
  </volist>
    <tr bgcolor="#ffffff"> 
      <td height="24" colspan="7" >
      	&nbsp;
          <a href="javacript:void(0)" class="btn btn-default" onclick="checkAll('ids[]')" class="coolbg">全选/反选</a>
          <button type="button" name="delBtn" class="btn btn-default btn-sm" onclick="delContent('ids[]')" >删除</button>
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

function changeCustomerStatus(s, id){

	var d = "确定激活该用户？";
	if(s == 0){
		d = "确定停用该用户？";
	}
	yygcms_confirm(d, function (result) {
        if(result){
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

    });
}

function changePassword(customerId) {
    var dialog = bootbox.dialog({
        title: '修改密码',
        message: "<p><div id=\"yyg-audit-error\" class=\"yyg-error\"></div><input class=\"form-control\" placeholder=\"新密码\" name=\"newpassword\" type=\"password\" id=\"newpassword\" size='40'/></p>",
        buttons: {
            ok: {
                label: "确定",
                className: 'btn-info',
                callback: function () {
                    var newpassword = $.trim($("#newpassword").val());
                    if (!newpassword) {
                        $("#yyg-audit-error").html("密码不能为空");
                        return false;
                    }

                    if (newpassword.length < 6) {
                        $("#yyg-audit-error").html("密码不能小于6个字符");
                        return false;
                    }

                    if (newpassword.length > 30) {
                        $("#yyg-audit-error").html("密码不能大于30个字符");
                        return false;
                    }

                    doChangePassword(newpassword, customerId);
                    return true;
                }
            },
            cancel: {
                label: "取消",
                className: 'btn-default',
                callback: function () {
                    return true;
                }
            },
        }
    });

    var doChangePassword = function (newpassword, customerId) {
        $.post('__URL__/changePassword', {"customerId": customerId, "newpassword" : newpassword}, function (data, status) {
            data = comm_parseJsonResult(data);
            if(data){
                show_success_alert("成功", "修改成功");
            }
        });
    };
}

</script>
<include file="Public:footer" />

