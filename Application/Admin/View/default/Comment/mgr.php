<include file="Public:header" />
<link href="http://cdn.bootcss.com/bootstrap-datepicker/1.7.0/css/bootstrap-datepicker.min.css" type="text/css" rel="stylesheet">
<link href="https://cdn.bootcss.com/webui-popover/2.1.15/jquery.webui-popover.min.css" rel="stylesheet">
<script type="text/javascript" language="javascript" src="http://cdn.bootcss.com/bootstrap-datepicker/1.7.0/js/bootstrap-datepicker.min.js"></script>
<script src="https://cdn.bootcss.com/webui-popover/2.1.15/jquery.webui-popover.min.js"></script>
<div style="min-width:780px">
    <table width="98%" border="0" cellpadding="0" cellspacing="0" style="margin-top:10px" bgcolor="#D6D6D6" align="center">
        <tr>
            <td bgcolor="#FFFFFF" width="100%">
                <div id="_mainsearch">

                    <table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#D6D6D6">
                        <tbody><tr>
                            <td height="19" colspan="11" >
                                <table width="96%" border="0" cellspacing="1" cellpadding="1">
                                    <tbody><tr>
                                        <td width="24%" style="padding-left:10px;"><strong>评论管理</strong></td>
                                        <td width="76%" align="right">
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr align="center" bgcolor="#23262e" height="25" class="tr-head">
                            <td height="24" width="3%">选择</td>
                            <td width="35%" align="left">内容</td>
                            <td width="15%" align="left">关联文章</td>
                            <td width="10%"><a href="javascript:void(0)" title="点击排序" onclick="sortContent('{$sort}')">创建时间</a>  </td>
                            <td width="8%" nowrap="nowrap">状态</td>
                            <td width="8%" nowrap="nowrap">操作</td>
                        </tr>

                        <volist name="list" id="item">
                            <tr align="center" bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#EEEEEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="24">
                                <td>
                                    <input type="checkbox" name="ids[]" value="{$item.id}" class="np">
                                </td>
                                <td align="left">
                                    <div class="comment-brief-popover" href="javascript:void(0)" data-content="{$item.content}" data-placement="auto" data-width="80%">{$item.brief}</div>
                                </td>
                                <td align="left">
                                    <a href="<?php echo site_url("/article/view/id/".$item['article']['idcode']) ?>" target="_blank">{$item.article.title}</a>
                                </td>
                                <td>
                                    {$item.createtime}
                                </td>
                                <td>
                                    <if condition="($item.status eq 1) ">
                                        <span  style="color:green;">发布 </span>
                                        <else /><span style="color:red;">屏蔽</span>
                                    </if>
                                    <if condition="($item.audit neq '')">(<span style="color:#222;overflow: hidden;cursor: pointer" title="{$item.audit}">
                                            <?php if(mb_strlen($item['audit']) > 5){?>
                                                <?php echo mb_substr($item['audit'], 0, 5) ?><span>...</span>
                                            <?php }else{ ?>
                                                <?php echo $item['audit'] ?>
                                            <?php } ?>
                                        </span>)
                                    </if>
                                </td>
                                <td>
                                    <a href="javascript:void(0)" onclick="doAudit('{$item.id}')">[审核]</a>
                                </td>

                            </tr>
                        </volist>
                        <tr bgcolor="#ffffff">
                            <td height="24" colspan="10" >
                                &nbsp;
                                <a href="javacript:void(0)" class="btn btn-default" onclick="checkAll('ids[]')" class="coolbg">全选/反选</a>
                                <button type="button" name="delBtn" class="btn btn-default btn-sm" onclick="delComment('ids[]')" >删除</button>
                                <div style="float:right">
                                    <form name="o-form" id="o-form" method="get" action="__URL__/mgr/<?php echo $category['pagecode'] ?>">
                                        <span class="info">创建时间</span>
                                        <input type="text" id="startdate" name="startdate" class="input-sm " size="12" readonly value="<?php echo $startdate ?>" />
                                        -
                                        <input type="text" id="enddate" name="enddate" class="input-sm" size="12" readonly value="<?php echo $enddate ?>"/>
                                        <select name="o_category">
                                            <option value="">所有分类</option>
                                            <volist name="categorys" id="caitem">
                                                <option value="{$caitem.id}" <?php if($o_categoryId === $caitem['id']){ echo "selected";} ?>>{$caitem.name}</option>
                                            </volist>
                                        </select>
                                        <select name="o_status">
                                            <option value="">所有状态</option>
                                            <option value="1" <?php if($o_status === '1'){ echo "selected";} ?>>发布</option>
                                            <option value="0" <?php if($o_status === '0'){ echo "selected";} ?>>屏蔽</option>
                                        </select>
                                        <span class="info">内容，关联文章模糊查询</span>
                                        <input type="text" name="o_keyword" size="30" placeholder="内容，关联文章" value="<?php echo $o_keyword ?>" />
                                        <input type="submit"  class="btn btn-primary"  value="  筛选  " />
                                        <input type="reset" id="reset-btn"  class="btn btn-default"  value=" 重置 " />
                                    </form>
                                </div>
                            </td>
                        </tr>

                        <tr align="right" bgcolor="#F9FCEF">
                            <td height="36" colspan="11" align="center" id="pages">
                                {$page}
                            </td>
                        </tr>
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

    function delComment(as){
        var ass = $("input[name='" + as + "']").toArray();

        if(ass.length <= 0) return false;
        var asIdss = [];
        for(var i = 0, len = ass.length; i < len; i++){
            if(ass[i].checked){
                asIdss[asIdss.length] = ass[i].value;
            }

        }
        console.log(asIdss);

        if(asIdss.length <= 0){
            bootbox.alert("选择一个要删除的项");
            return false;
        }

        yygcms_confirm("确认删除所选项？", function(result){
            var args = {
                "ids":asIdss.join(',')
            };
            if(result){
                $.post('__URL__/del', args, function (data, status) {
                    data = comm_parseJsonResult(data);
                    if(data){
                        window.location.reload();
                    }
                });
            }
        });

    }


    $(function () {
        $('#startdate').datepicker({
            format: "yyyy-mm-dd",
            autoclose: true
        });

        $('#enddate').datepicker({
            format: "yyyy-mm-dd",
            autoclose: true
        });
        
        $("#reset-btn").click(function (e) {
            $("#o-form").get(0).reset();
            $('#startdate').val("");
            $('#enddate').val("");
            e.stopPropagation();
            return false;
        });
        $('.comment-brief-popover').webuiPopover();
    });

    function doAudit(commentId){
        var dialog = bootbox.dialog({
            title: '审核',
            message: "<p><div id=\"yyg-audit-error\" class=\"yyg-error\"></div><textarea id=\"audit-content\" rows='3' cols='90' style='resize: none;'></textarea></p>",
            buttons: {
                ok: {
                    label: "通过",
                    className: 'btn-info',
                    callback: function(){
                        var cont = $.trim($("#audit-content").val());
                        if(!cont){
                            $("#yyg-audit-error").html("审核内容不能为空");
                            return false;
                        }
                        doPostAudit(cont, 1);
                        return true;
                    }
                },
                cancel: {
                    label: "屏蔽",
                    className: 'btn-danger',
                    callback: function(){
                        var cont = $.trim($("#audit-content").val());
                        if(!cont){
                            $("#yyg-audit-error").html("审核内容不能为空");
                            return false;
                        }
                        doPostAudit(cont, 0);
                        return true;
                    }
                },
            }
        });

        var doPostAudit = function (cont, status) {
            $.post('__URL__/audit', {"commentId": commentId, "content" : cont, 'status' : status}, function (data, status) {
                data = comm_parseJsonResult(data);
                if(data){
                    window.location.reload();
                }
            });
        };
    }


</script>
<script type="text/javascript" language="javascript" src="http://cdn.bootcss.com/bootstrap-datepicker/1.7.0/locales/bootstrap-datepicker.zh-CN.min.js"></script>
<include file="Public:footer" />

