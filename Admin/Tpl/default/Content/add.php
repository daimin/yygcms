<include file="Public:header" />
<div style="min-width:780px">
    <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D6DDD6" align="center">
        <tr>
            <td height="28" background="__PUBLIC__/admin/images/tbg.gif" style="padding-left:10px;"><b>添加【<?php echo $category['name'] ?>】内容： (加<span class="yyg-required">*</span>为必填)</b><a class="btn btn-success pull-right" href="javascript:window.history.go(-1)">返回列表</a></td>
        </tr>

    </table>
    <table width="98%" border="0" cellpadding="0" cellspacing="0" style="margin-top:10px" align="center">
        <tr>
            <td bgcolor="#FFFFFF" width="100%">
                <form action="__URL__/add/type/index" method="post" name="form1" >
                    <div id="_mainsearch">

                        <table class="edit-tab" width="100%" style='' id="" border="0" cellspacing="0" cellpadding="1">

                            <tr >
                                <td class="head"><span class="yyg-required">*</span>标题： </td>
                                <td class="tail" colspan="2"><input type='text' name="title" value="" style='width:60%'></td>

                            </tr>
                            <tr >
                                <td class="head "><span class="yyg-required">*</span>内容： </td>
                                <td class="tail" colspan="2"> <textarea name="content" style='width:70%' rows="30" id="yyg_content"></textarea></td>

                            </tr>
                            <tr >
                                <td class="head "><span class="yyg-required">*</span>分类： </td>
                                <td class="tail" colspan="2">
                                    <select>
                                        <volist name="categorys" id="caitem">
                                            <option value="{$caitem.id}" >{$caitem.name}</option>
                                        </volist>
`                                    </select>
                                </td>

                            </tr>
                            <tr >
                                <td class="head">关联URL：</td>
                                <td class="tail" colspan="2"> <input type='text' name='relurl' value="" style='width:40%'><span class="info">点击该文档，跳转到的页面(默认是该文档的URL)</span>
                                </td>
                            </tr>
                            <tr >
                                <td class="head ">嵌入代码： </td>
                                <td class="tail" colspan="2"> <textarea name="embed_code" style='width:70%' rows="5" id="yyg_embed_code"></textarea></td>

                            </tr>
                            <tr >
                                <td class="head">上传图片：</td>
                                <td class="tail"> <input type="file"  name="yyg_uploadImg" value="" id="yyg_uploadImg" style="visibility: hidden"/>
                                    <input type="hidden"  name="yyg_uploadImg_ids" value="" id="yyg_uploadImg_ids"/>
                                    <div id="update_img_list">
                                    </div>
                                </td>
                                <td class="info">首页仅显示第一张图片</td>
                            </tr>

                        </table>

                    </div>
                    <table width="100%" border="0" cellspacing="1" cellpadding="1"  style="border:1px solid #cfcfcf;border-top:none;">
                        <tr bgcolor="#BAF095">
                            <td height="50" colspan="3"><table width="98%" border="0" cellspacing="1" cellpadding="1">
                                    <tr>
                                        <td width="11%">&nbsp;</td>
                                        <td width="11%"><button name="imageField" type="button" class="btn btn-primary" > 提 交 </button></td>
                                        <td width="78%"></td>
                                    </tr>
                                </table></td>
                        </tr>
                    </table>
                </form></td>
        </tr>
    </table>
</div>
<link rel="stylesheet" href="__PUBLIC__/admin/kindeditor/themes/simple/simple.css" />
<script type="text/javascript" charset="utf-8" src="__PUBLIC__/admin/kindeditor/kindeditor-min.js"></script>
<script type="text/javascript" charset="utf-8" src="__PUBLIC__/admin/kindeditor/lang/zh_CN.js"></script>
<link rel="stylesheet" href="__PUBLIC__/admin/uploadify/uploadify.css" />
<script type="text/javascript" src="__PUBLIC__/admin/uploadify/swfobject.js"></script>
<script type="text/javascript" src="__PUBLIC__/admin/uploadify/jquery.uploadify.v2.1.4.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/admin/js/imgpreview.min.jquery.js"></script>
<script type="text/javascript">
    var editor;
    KindEditor.ready(function(K) {
        editor = K.create('#yyg_content', {
            resizeType : 1,
            allowPreviewEmoticons : false,
            allowImageUpload : false,
            allowFlashUpload : false,
            allowMediaUpload : false,
            items : [
                'source', '|', 'undo', 'redo', '|', 'cut', 'copy', 'paste',
                'plainpaste', 'wordpaste', '|', 'justifyleft', 'justifycenter', 'justifyright',
                'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript',
                'superscript', 'clearhtml', 'quickformat', 'selectall', '|', 'fullscreen', '/',
                'formatblock', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
                'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|', 'image',
                'flash', 'media', 'table', 'hr', 'emoticons', 'baidumap', 'pagebreak',
                'anchor', 'link', 'unlink'
            ]
        });
    });

    $(document).ready(function() {
        $('#yyg_uploadImg').uploadify({
            'uploader'  : '__PUBLIC__/admin/uploadify/uploadify.swf?var='+(new Date()).getTime(),
            'script'    : '__URL__/upload',
            'cancelImg' : '__PUBLIC__/admin/uploadify/cancel.png',
            'folder'    : '<?php echo __ROOT__.C("__YYG_UPLOAD_DIR__");?>',
            'auto'      : true,
            'multi'     : true,
            'queueSizeLimit' : 8,
            'sizeLimit' : <?php echo $option->maxImgSize?>,
            'fileExt'   : '{$attachAllow}',
            'fileDesc'  : '请选择图片文件',
            'simUploadLimit':8,

            'onComplete'  : function(event, ID, fileObj, response, data) {
                var jsondata = response.toString();
                try{
                    jsondata = eval("("+jsondata+")");
                }catch(e){
                    bootbox.alert(jsondata);
                    return ;
                }

                $("#yyg_uploadImg_ids").val($("#yyg_uploadImg_ids").val() + jsondata['id'] + ',');
                renderImgList(jsondata);
            }
        });

        renderImgLink();
    });

    function renderImgList(jsondata){
        $("#update_img_list").append('<div><a class="img-link" target="_blank" href="' + jsondata['path'] + '">' +
            jsondata['name'] +
            '</a>' +
            '<a href="javascript:void(0)" class="img-del" onclick="deleteUpImg(this, \'' + jsondata['id'] + '\')">' +
            '<img src="__PUBLIC__/admin/images/close.gif" border="none"></a>' +
            '<a href="javascript:void(0)" onclick="addToContent(\'' + jsondata['path'] + '\',\'' +
            jsondata['name'] + '\')" class="btn btn-default btn-xs pull-right" style="margin-top: 4px;">插入</a>' +
            '</div>');
        renderImgLink();

    }

    function deleteUpImg(o, attId){
        var args = {
            "id":attId,
        };
        $.post('__URL__/delAttr',args,function(data){
            if(data == 1){
                $(o).parent().remove();
            }else{
                alert(data);
            }
        });
    }


</script>
<include file="Public:footer" />

