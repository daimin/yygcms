<include file="Public:header" />

<script src="https://cdn.bootcss.com/bootstrap/2.2.2/bootstrap.min.js"></script>

<div style="min-width:780px;margin-top: 12px;margin-left: 24px">
    <div>

        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#lunboimgs" aria-controls="lunboimgs" role="tab" data-toggle="tab">图片轮播</a></li>
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
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>@twitter</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div role="tabpanel" class="tab-pane" id="yunyuzhishi">...</div>
            <div role="tabpanel" class="tab-pane" id="qingzibaike">...</div>
            <div role="tabpanel" class="tab-pane" id="muyinyoupin">...</div>
            <div role="tabpanel" class="tab-pane" id="ertonggushi">...</div>
            <div role="tabpanel" class="tab-pane" id="ertongdonghua">...</div>
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

        $.get('__URL__/getList', function(data, status){
            $('#category-tree').treeview(
            {
                data: comm_parseJsonResult(data),
                selectedBackColor : '#cccccc',
                state:{
                    expanded: true,
                    selected: false
                },
                highlightSelected: false
            });
        });
        
        function open_add_dialog() {
            $.get('__URL__/getCategorys?pid=0', function(data,status){
                var cates = comm_parseJsonResult(data);
                $("#parent_category").empty();
                $("#parent_category").append('<option value="0">无分类</option>');
                $(cates).each(function(it){
                    $("#parent_category").append('<option value="'+cates[it]['id']+'">' + cates[it]['name'] + '</option>');
                });
            });
        }

        function submit_check(tform) {
            if(tform.category_name.value == ''){
                $("#add-category-form-alert").text("分类名称不能为空").show();
                return false;
            }
            $.post(tform.action, {'category_name' : tform.category_name.value, 'parent_category' : tform.parent_category.value}, function (data, status) {
                data = comm_parseJsonResult(data);
                if(data){
                    show_success_alert('成功', "新增分类成功", function () {
                        window.location.reload();
                    });
                }
            });
            return false;
        }

        function doDel(cid, cname) {
            yygcms_confirm("确认删除分类：<span style=\"color:#dd2222;\">" + cname + "</span>?", function (result) {
                if(result){
                    $.post('__URL__/dodel', {'cid' : cid}, function (data, status) {
                        data = comm_parseJsonResult(data);
                        if(data){
                            window.location.reload();
                        }
                    });
                }
            })

        }

        function doEnabled(cid) {
            $.post('__URL__/dodisable', {'cid' : cid, 'status' : 1}, function (data, status) {
                data = comm_parseJsonResult(data);
                if(data){
                    window.location.reload();
                }
            });
        }

        function doDisabled(cid) {
            $.post('__URL__/dodisable', {'cid' : cid, 'status' : 0}, function (data, status) {
                data = comm_parseJsonResult(data);
                if(data){
                    window.location.reload();
                }
            });
        }

        function doEdit(cid) {
            var e = getEvent();
            e.stopPropagation();
            $("#cate-" + cid + '-text').hide();
            var editJobj = $("#cate-" + cid + '-edit');
            editJobj.show();
            editJobj.click(function (e) {
                e.stopPropagation();
                }
            );
            var oldVal = editJobj.val();
            editJobj.blur(function(e){
                e.stopPropagation();
                console.log(encodeURIComponent(editJobj.val()));

                if(oldVal != editJobj.val() && editJobj.val().trim() != ''){
                    $.post('__URL__/updatename', {'cid' : cid, 'name' : editJobj.val()}, function (data, status) {
                        data = comm_parseJsonResult(data);
                        if(data){
                            $("#cate-" + cid + '-text').text(editJobj.val());
                            $("#cate-" + cid + '-text').show();
                            editJobj.hide();
                        }
                    });
                }
            });
            return false;
        }

</script>
<include file="Public:footer" />

