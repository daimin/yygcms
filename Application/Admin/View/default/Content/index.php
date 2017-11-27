<include file="Public:header" />
<link href="http://cdn.bootcss.com/bootstrap-datepicker/1.7.0/css/bootstrap-datepicker.min.css" type="text/css" rel="stylesheet">
<script type="text/javascript" language="javascript" src="http://cdn.bootcss.com/bootstrap-datepicker/1.7.0/js/bootstrap-datepicker.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap-datepicker/1.7.0-RC3/locales/bootstrap-datepicker.zh-CN.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/2.2.2/bootstrap.min.js"></script>

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
                                        <td width="24%" style="padding-left:10px;"><strong>【<?php echo $category['name'] ?>】文章列表</strong></td>
                                        <td width="76%" align="right">
                                        </td>
                                    </tr>
                                    </tbody></table>
                            </td>
                        </tr>
                        <tr align="center" bgcolor="#23262e" height="25" class="tr-head">
                            <td height="24" width="3%">选择</td>
                            <td width="25%" align="left">标题</td>
                            <td width="8%" align="left">分类</td>
                            <td width="15%">关联链接</td>
                            <td width="10%"><a href="javascript:void(0)" title="点击排序" onclick="sortContent('{$sort}')">创建时间</a>  </td>
                            <td width="10%">修改时间</td>
                            <td width="8%" nowrap="nowrap">状态</td>
                            <td width="3%" nowrap="nowrap">附件</td>
                            <td width="3%" nowrap="nowrap">排序</td>
                            <td width="12%" nowrap="nowrap">操作</td>
                        </tr>

                        <volist name="list" id="item">
                            <tr align="center" bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#EEEEEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="24">
                                <td>
                                    <input type="checkbox" name="ids[]" value="{$item.id}" class="np">
                                </td>
                                <td align="left">
                                    {$item.title}
                                    <?php if($item['topnum'] > 0){ ?>
                                        <span class="label label-success" style="margin-left: 12px;">已置顶</span>
                                    <?php }?>
                                </td>
                                <td align="left">
                                    {$item.category_name}
                                </td>
                                <td  align="left">
                                    <a target="_blank" href="{$item.relurl}  ">{$item.relurl}  </a>
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
                                    <a style="text-decoration: none;" href="__URL__/edit/cid/{$item.id}" title="编辑">[编辑]</a>
                                    <?php if($item['topnum'] > 0){ ?>
                                        <a style="text-decoration: none;" href="javascript:void(0)" onclick="canceltop('{$item.id}')" title="取消置顶">[取消置顶]</a>
                                    <?php }else if($item['status'] == 1){ ?>
                                        <a style="text-decoration: none;" href="javascript:void(0)" onclick="puttop('{$item.id}')" title="置顶">[置顶]</a>
                                    <?php }?>
                                    <div class="dropdown" style="display: inline-block">
                                        <a id="drop6" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">
                                            [首页展示]
                                            <span class="caret"></span>
                                        </a>
                                        <ul id="menu3" class="dropdown-menu" aria-labelledby="drop6">
                                            <li><a href="javascript:void(0)" onclick="setToDisplayIndex('lunboimgs', '{$item.id}')">图片轮播</a></li>
                                            <li><a href="javascript:void(0)" onclick="setToDisplayIndex('yunyuzhishi', '{$item.id}')">孕育知识</a></li>
                                            <li><a href="javascript:void(0)" onclick="setToDisplayIndex('qingzibaike', '{$item.id}')">亲子百科</a></li>
                                            <li><a href="javascript:void(0)" onclick="setToDisplayIndex('muyinyoupin', '{$item.id}')">母婴优品</a></li>
                                            <li><a href="javascript:void(0)" onclick="setToDisplayIndex('ertonggushi', '{$item.id}')">儿童故事</a></li>
                                            <li><a href="javascript:void(0)" onclick="setToDisplayIndex('ertongdonghua', '{$item.id}')">儿童动画</a></li>
                                        </ul>
                                    </div>
                                </td>

                            </tr>
                        </volist>
                        <tr bgcolor="#ffffff">
                            <td height="24" colspan="10" >
                                &nbsp;
                                <button type="button" class="btn btn-primary" onclick="doadd()">新增文章</button>
                                <a href="javacript:void(0)" class="btn btn-default" onclick="checkAll('ids[]')" class="coolbg">全选/反选</a>
                                <button type="button" name="delBtn" class="btn btn-default btn-sm" onclick="delContent('ids[]')" >删除</button>
                                <div style="float:right">
                                    <form name="o-form" id="o-form" method="get" action="__URL__/category/code/<?php echo $category['pagecode'] ?>">
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
                                            <option value="0" <?php if($o_status === '0'){ echo "selected";} ?>>草稿</option>
                                        </select>
                                        <span class="info">标题，关联链接模糊查询</span>
                                        <input type="text" name="o_keyword" size="30" placeholder="标题，关联链接" value="<?php echo $o_keyword ?>" />
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

    function delContent(as){
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

    function changeContentStatus(s, id){
        var d = "确定将该文档发布？";
        if(s == 0){
            d = "确定该文档置为草稿？";
        }

        yygcms_confirm(d, function (result) {
            var args = {
                "id":id,
                "status":s
            };
            $.post('__URL__/changeStatus',args,function(data){
                data = comm_parseJsonResult(data);
                if(data == 1){
                    window.location.reload();
                }else{
                    bootbox.alert(data);
                }
            });
        });
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

    $(function () {
        $('#startdate').datepicker({
            format: "yyyy-mm-dd",
            autoclose: true,
            language: 'zh-CN'
        });

        $('#enddate').datepicker({
            format: "yyyy-mm-dd",
            autoclose: true,
            language: 'zh-CN'
        });
        
        $("#reset-btn").click(function (e) {
            $("#o-form").get(0).reset();
            $('#startdate').val("");
            $('#enddate').val("");
            e.stopPropagation();
            return false;
        });
        $('.dropdown-toggle').dropdown()
    });
    
    function doadd() {
        window.location.href="__URL__/add/code/<?php echo $category['pagecode'] ?>";
    }

    function canceltop(itemid){
        var args = {
            "id":itemid,
            "status":itemid
        };
        $.post('__URL__/canceltop',args,function(data){
            data = comm_parseJsonResult(data);
            if(data == 1){
                window.location.reload();
            }else{
                console.log(data);
                bootbox.alert(data);
            }
        });
    }

    function puttop(itemid){
        var args = {
            "id":itemid,
            "status":itemid
        };
        $.post('__URL__/puttop',args,function(data){
            data = comm_parseJsonResult(data);
            if(data == 1){
                window.location.reload();
            }else{
                console.log(data);
                bootbox.alert(data);
            }
        });
    }
    
    function setToDisplayIndex(disid, cid) {
        $.post('__URL__/setToDisplayIndex',{'id' : cid, 'disId' : disid},function(data){
            data = comm_parseJsonResult(data);
            if(data == 1){
                show_success_alert('成功', '设置成功');
            }
        });
    }




</script>
<script type="text/javascript" language="javascript" src="http://cdn.bootcss.com/bootstrap-datepicker/1.7.0/locales/bootstrap-datepicker.zh-CN.min.js"></script>
<include file="Public:footer" />

