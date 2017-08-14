<include file="Public:header" />
<link href="__PUBLIC__/admin/bootstrap-treeview/dist/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="__PUBLIC__/admin/bootstrap-treeview/dist/bootstrap-treeview.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript" src="__PUBLIC__/admin/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
<div style="min-width:780px">
    <table width="98%" border="0" cellpadding="0" cellspacing="0" style="margin-top:10px" bgcolor="#D6D6D6" align="center">
        <tr>
            <td bgcolor="#FFFFFF" width="100%">

                <table width="99%" border="0" cellpadding="3" cellspacing="1" bgcolor="#D6D6D6">
                    <tbody><tr>
                        <td height="19" colspan="7" background="__PUBLIC__/admin/images/tbg.gif" bgcolor="#E7E7E7">
                            <table width="96%" border="0" cellspacing="1" cellpadding="1">
                                <tbody><tr>
                                    <td width="24%" style="padding-left:10px;"><strong>分类管理</strong></td>
                                    <td width="76%" align="right">
                                    </td>
                                </tr>
                                </tbody></table>
                        </td>
                    </tr>
                    </tbody>
                    </table>
                </td>
            </tr>
        <tr align="center" height="25" style="color:#fff;font-weight: bold;">
            <td> </td>
        </tr>
        <tr>
            <td>    <div id="category-tree" style="width: 800px"></div>
            </td>
        </tr>
        </table>
</div>
<script type="text/javascript">

        $.get('__URL__/getList', function(data,status){
            $('#category-tree').treeview(
            {
                data: data,
                selectedBackColor : '#cccccc'
        });
        });



//    $(function () {
//        $("#category-tree")
//    })
</script>
<include file="Public:footer" />

