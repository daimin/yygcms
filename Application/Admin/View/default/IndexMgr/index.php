<include file="Public:header" />

<script src="https://cdn.bootcss.com/bootstrap/2.2.2/bootstrap.min.js"></script>

<div style="min-width:780px;margin-top: 12px;margin-left: 24px">
    <div>

        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist" id="mytabs">
            <li role="presentation" class="active"><a href="#lunboimgs" aria-controls="lunboimgs" role="tab" data-toggle="tab">图片轮播</a></li>
            <li role="presentation"><a href="#fumuketang" aria-controls="fumuketang" role="tab" data-toggle="tab">父母课堂</a></li>
            <li role="presentation"><a href="#rediandaodu" aria-controls="rediandaodu" role="tab" data-toggle="tab">热点导读</a></li>
            <li role="presentation"><a href="#tupianwenzhang" aria-controls="tupianwenzhang" role="tab" data-toggle="tab">图片文章</a></li>
            <li role="presentation"><a href="#yunyuzhishi" aria-controls="yunyuzhishi" role="tab" data-toggle="tab">孕育知识</a></li>
            <li role="presentation"><a href="#qingzibaike" aria-controls="qingzibaike" role="tab" data-toggle="tab">亲子百科</a></li>
            <li role="presentation"><a href="#muyinyoupin" aria-controls="muyinyoupin" role="tab" data-toggle="tab">母婴优品</a></li>
            <li role="presentation"><a href="#ertonggushi" aria-controls="ertonggushi" role="tab" data-toggle="tab">儿童故事</a></li>
            <li role="presentation"><a href="#ertongdonghua" aria-controls="ertongdonghua" role="tab" data-toggle="tab">儿童动画</a></li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="lunboimgs">
                <table class="table table-hover ">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>标题</th>
                        <th>分类</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach($indexDisplayList['lunboimgs'] as $idx => $indexDisplayItem){ ?>
                    <tr>
                        <td scope="row"><?php echo $idx+1 ?></td>
                        <td><?php echo $indexDisplayItem['title'] ?><span class="pull-right label label-info"><?php echo $indexDisplayItem['is_set_main'] ? '已设置主图' : ''?></span></td>
                        <td><?php echo $indexDisplayItem['category']['name'] ?></td>
                        <td>
                            <a href="javascript:void(0)" onclick="cancelToDisplayIndex('<?php echo $indexDisplayItem['id'] ?>', '图片轮播', this)">移除</a> |
                            <a href="javascript:void(0)" onclick="putToTop('<?php echo $indexDisplayItem['id'] ?>', this)">置顶</a> |
                            <a style="text-decoration: none;" href="javascript:void(0)" onclick="edit_content_page('<?php echo admin_url('/Content/edit/cid/'.$indexDisplayItem['id']) ?>', this)" title="编辑">编辑</a>
                        </td>
                    </tr>
                    <?php } ?>
                    </tbody>
                </table>
            </div>
            <div role="tabpanel" class="tab-pane" id="fumuketang">
                <table class="table table-hover ">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>标题</th>
                        <th>分类</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach($indexDisplayList['fumuketang'] as $idx => $indexDisplayItem){ ?>
                        <tr>
                            <td scope="row"><?php echo $idx+1 ?></td>
                            <td><?php echo $indexDisplayItem['title'] ?><span class="pull-right label label-info"><?php echo $indexDisplayItem['is_set_main'] ? '已设置主图' : ''?></span></td>
                            <td><?php echo $indexDisplayItem['category']['name'] ?></td>
                            <td>
                                <a href="javascript:void(0)" onclick="cancelToDisplayIndex('<?php echo $indexDisplayItem['id'] ?>', '图片轮播', this)">移除</a> |
                                <a href="javascript:void(0)" onclick="putToTop('<?php echo $indexDisplayItem['id'] ?>', this)">置顶</a> |
                                <a style="text-decoration: none;" href="javascript:void(0)" onclick="edit_content_page('<?php echo admin_url('/Content/edit/cid/'.$indexDisplayItem['id']) ?>', this)" title="编辑">编辑</a>
                            </td>
                        </tr>
                    <?php } ?>
                    </tbody>
                </table>
            </div>
            <div role="tabpanel" class="tab-pane" id="rediandaodu">
                <table class="table table-hover ">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>标题</th>
                        <th>分类</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach($indexDisplayList['rediandaodu'] as $idx => $indexDisplayItem){ ?>
                        <tr>
                            <td scope="row"><?php echo $idx+1 ?></td>
                            <td><?php echo $indexDisplayItem['title'] ?></td>
                            <td><?php echo $indexDisplayItem['category']['name'] ?></td>
                            <td><a href="javascript:void(0)" onclick="cancelToDisplayIndex('<?php echo $indexDisplayItem['id'] ?>', '热点导读', this)">移除</a></td>
                        </tr>
                    <?php } ?>
                    </tbody>
                </table>
            </div>
            <div role="tabpanel" class="tab-pane" id="tupianwenzhang">
                <table class="table table-hover ">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>标题</th>
                        <th>分类</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach($indexDisplayList['tupianwenzhang'] as $idx => $indexDisplayItem){ ?>
                        <tr>
                            <td scope="row"><?php echo $idx+1 ?></td>
                            <td><?php echo $indexDisplayItem['title'] ?><span class="pull-right label label-info"><?php echo $indexDisplayItem['is_set_main'] ? '已设置主图' : ''?></span></td>
                            <td><?php echo $indexDisplayItem['category']['name'] ?></td>
                            <td>
                                <a href="javascript:void(0)" onclick="cancelToDisplayIndex('<?php echo $indexDisplayItem['id'] ?>', '图片文章', this)">移除</a> |
                                <a href="javascript:void(0)" onclick="putToTop('<?php echo $indexDisplayItem['id'] ?>', this)">置顶</a> |
                                <a style="text-decoration: none;" href="javascript:void(0)" onclick="edit_content_page('<?php echo admin_url('/Content/edit/cid/'.$indexDisplayItem['id']) ?>', this)" title="编辑">编辑</a>
                            </td>
                        </tr>
                    <?php } ?>
                    </tbody>
                </table>
            </div>
            <div role="tabpanel" class="tab-pane" id="yunyuzhishi">
                <table class="table table-hover ">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>标题</th>
                        <th>分类</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach($indexDisplayList['yunyuzhishi'] as $idx => $indexDisplayItem){ ?>
                        <tr>
                            <td scope="row"><?php echo $idx+1 ?></td>
                            <td><?php echo $indexDisplayItem['title'] ?></td>
                            <td><?php echo $indexDisplayItem['category']['name'] ?></td>
                            <td><a href="javascript:void(0)" onclick="cancelToDisplayIndex('<?php echo $indexDisplayItem['id'] ?>', '孕育知识', this)">移除</a></td>
                        </tr>
                    <?php } ?>
                    </tbody>
                </table>
            </div>
            <div role="tabpanel" class="tab-pane" id="qingzibaike">
                <table class="table table-hover ">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>标题</th>
                        <th>分类</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach($indexDisplayList['qingzibaike'] as $idx => $indexDisplayItem){ ?>
                        <tr>
                            <td scope="row"><?php echo $idx+1 ?></td>
                            <td><?php echo $indexDisplayItem['title'] ?></td>
                            <td><?php echo $indexDisplayItem['category']['name'] ?></td>
                            <td><a href="javascript:void(0)" onclick="cancelToDisplayIndex('<?php echo $indexDisplayItem['id'] ?>', '亲子百科', this)">移除</a></td>
                        </tr>
                    <?php } ?>
                    </tbody>
                </table>
            </div>
            <div role="tabpanel" class="tab-pane" id="muyinyoupin">
                <table class="table table-hover ">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>标题</th>
                        <th>分类</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach($indexDisplayList['muyinyoupin'] as $idx => $indexDisplayItem){ ?>
                        <tr>
                            <td scope="row"><?php echo $idx+1 ?></td>
                            <td><?php echo $indexDisplayItem['title'] ?></td>
                            <td><?php echo $indexDisplayItem['category']['name'] ?></td>
                            <td><a href="javascript:void(0)" onclick="cancelToDisplayIndex('<?php echo $indexDisplayItem['id'] ?>', '母婴优品', this)">移除</a></td>
                        </tr>
                    <?php } ?>
                    </tbody>
                </table>
            </div>
            <div role="tabpanel" class="tab-pane" id="ertonggushi">
                <table class="table table-hover ">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>标题</th>
                        <th>分类</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach($indexDisplayList['ertonggushi'] as $idx => $indexDisplayItem){ ?>
                        <tr>
                            <td scope="row"><?php echo $idx+1 ?></td>
                            <td><?php echo $indexDisplayItem['title'] ?></td>
                            <td><?php echo $indexDisplayItem['category']['name'] ?></td>
                            <td><a href="javascript:void(0)" onclick="cancelToDisplayIndex('<?php echo $indexDisplayItem['id'] ?>', '儿童故事', this)">移除</a></td>
                        </tr>
                    <?php } ?>
                    </tbody>
                </table>
            </div>
            <div role="tabpanel" class="tab-pane" id="ertongdonghua">
                <table class="table table-hover ">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>标题</th>
                        <th>分类</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach($indexDisplayList['ertongdonghua'] as $idx => $indexDisplayItem){ ?>
                        <tr>
                            <td scope="row"><?php echo $idx+1 ?></td>
                            <td><?php echo $indexDisplayItem['title'] ?></td>
                            <td><?php echo $indexDisplayItem['category']['name'] ?></td>
                            <td><a href="javascript:void(0)" onclick="cancelToDisplayIndex('<?php echo $indexDisplayItem['id'] ?>', '儿童动画', this)">移除</a></td>
                        </tr>
                    <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">新增分类</h4>
            </div>
            <form id="add-category-form" method="POST" name="add-category-form" action="__URL__/addcategory" onsubmit="return submit_check(this)">
            <div class="modal-body">
                <div class="alert alert-danger" role="alert" id="add-category-form-alert" style="display:none"></div>
                    <div class="form-group">
                        <label for="category_name" class="control-label">分类名称:</label>
                        <input type="text" class="form-control" name="category_name" id="category_name" />
                    </div>
                    <div class="form-group">
                        <label for="parent_category" class="control-label">选择父级:</label>
                        <select class="form-control" id="parent_category" name="parent_category">
                        </select>
                    </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="submit" class="btn btn-primary">保存</button>
            </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript">

    function cancelToDisplayIndex(cid, moduleName, thiz) {
        $.post('__URL__/cancelDisplayIndex',{'id' : cid},function(data){
            data = comm_parseJsonResult(data);
            if(data == 1){
                show_success_alert('成功', '文章在首页【' + moduleName + '】模块移除', function () {
                    $(thiz).parent().parent().remove();
                });
            }
        });
    }
    
    function putToTop(cid, thiz) {
        $.post('<?php echo admin_url('content/puttop')?>',{'id' : cid},function(data){
            data = comm_parseJsonResult(data);
            if(data == 1){
                $(thiz).parent().parent().parent().prepend($(thiz).parent().parent());
                $(thiz).parent().parent().parent().find("tr").each(function (i, o) {
                    $(this).find('td').first().html(i+1);
                });
            }
        });
    }
    
    function edit_content_page(url, thiz) {
        bootbox.alert({message:'<iframe style="width: 100%;height:600px;" src="' + url + '?fromPopWindow=1"></iframe>', title:"编辑", size:"large", callback:function(){
            var dhref = window.location.href;
            var subhref = dhref.substring(0,dhref.lastIndexOf("?"));
            if(!subhref){
                subhref = dhref;
            }

            console.log(subhref + "#" + $($(thiz).parents(".tab-pane")[0]).attr("id"));
            window.location.href = subhref + "?t=" + (new Date().getTime()) +  "#" + $($(thiz).parents(".tab-pane")[0]).attr("id");
        }});
    }


    $(function () {
        var href = window.location.href;
        var shaindx = href.lastIndexOf("#");
        if(shaindx !== -1){
            var hid = href.substring(shaindx);
            $('#mytabs a').each(function(i, o){
                if(o.href.indexOf(hid) !== -1){
                    $(o).tab('show');
                }
            });
        }

    });

</script>
<include file="Public:footer" />

