<include file="Public:header" />
<script type="text/javascript" language="javascript" src="__PUBLIC__/admin/js/ejs/ejs.min.js"></script>
<div style="min-width:780px;height:1440px;">
    <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D6DDD6" align="center">
        <tr>
            <td height="28" background="__PUBLIC__/admin/images/tbg.gif" style="padding-left:10px;">
                <b>编辑【<?php echo $category['name'] ?>】内容： (加<span class="yyg-required">*</span>为必填)</b>
            </td>
        </tr>

    </table>
    <table width="98%" border="0" cellpadding="0" cellspacing="0" style="margin-top:10px" align="center">
        <tr>
            <td bgcolor="#FFFFFF" width="100%">
                <form action="__URL__/edit/cid/<?php echo $content['id'] ?>" method="post" name="form1" >
                    <input type="hidden" value="{$content.id}" name="id" />
                    <input type="hidden" value="{$content.type}" name="type" />
                    <input type="hidden" value="{$fromPopWindow}" name="fromPopWindow" />
                    <div id="_mainsearch">

                        <table class="edit-tab" width="100%" style='' id="" border="0" cellspacing="0" cellpadding="1">

                            <tr >
                                <td class="head"><span class="yyg-required">*</span>标题： </td>
                                <td class="tail" colspan="2"><input type='text' name="title" value="{$content.title}" style='width:90%'></td>

                            </tr>
                            <tr >
                                <td class="head "><span class="yyg-required">*</span>内容： </td>
                                <td class="tail" colspan="2"> <textarea name="content" style='width:90%' rows="40" id="yyg_content">{$content.content}</textarea></td>
                            </tr>
                            <tr >
                                <td class="head "><span class="yyg-required">*</span>导读： </td>
                                <td class="tail" colspan="2"> <textarea name="intro" style='width:90%;margin-top: 3px;margin-bottom: 3px;' rows="4" id="yyg_intro">{$content.intro}</textarea>
                                    <span class="info">文章的导读，文章的简介，内容摘要</span></td>
                            </tr>
                            <tr >
                                <td class="head "><span class="yyg-required">*</span>分类： </td>
                                <td class="tail" colspan="2">
                                    <select name="category">
                                        <volist name="categorys" id="caitem">
                                            <option value="{$caitem.id}" <?php if($category['id'] == $caitem['id']){
                                                echo ' selected ';
                                            } ?>>{$caitem.name}</option>
                                        </volist>
                                    </select>
                                </td>

                            </tr>
                            <tr >
                                <td class="head">育儿阶段：</td>
                                <td class="tail" colspan="2">
                                    <volist name="stages" id="sitem">
                                        <label class="checkbox-inline" style="margin-right: 6px;">
                                            <input type="checkbox" name="yuer_stage[]" <?php if(in_array($sitem, $selStages)){
                                                echo " checked ";
                                            } ?> value="{$sitem}">
                                            {$sitem}
                                        </label>
                                    </volist>
                                </td>
                            </tr>
                            <tr >
                                <td class="head">标签：</td>
                                <td class="tail" colspan="2"> <input type='text' name='tags' value="<?php echo $tags?>" style='width:40%'><span class="info">标签以英文逗号(,)分割，每个标签不超过4个字符</span>
                                </td>
                            </tr>
                            <tr >
                                <td class="head">关联URL：</td>
                                <td class="tail" colspan="2"> <input type='text' name='relurl' value="{$content.relurl}" style='width:40%'><span class="info">(点击该文档，跳转到的页面(默认是该文档的URL))</span>

                                </td>
                            </tr>
                            <tr >
                                <td class="head ">嵌入代码： </td>
                                <td class="tail" colspan="2"> <textarea name="embed_code" style='width:90%' rows="5" id="yyg_embed_code"></textarea></td>
                            </tr>
                            <tr >
                                <td class="head">上传图片：</td>
                                <td class="tail">
                                    <input type="hidden"  name="yyg_uploadImg_ids" value="" id="yyg_uploadImg_ids"/>
                                    <input type="hidden"  name="set_main_img_id" value="" id="set_main_img_id"/>
                                    <span class="btn btn-primary fileinput-button" style="margin-top: 12px">
                                        <i class="glyphicon glyphicon-plus"></i>
                                        <span>上传图片...</span>
                                        <input id="yyg_uploadImg" type="file" name="yyg_uploadImg[]">
                                    </span>
                                    <!-- The global progress bar -->
                                    <div id="progress" class="progress" style="margin-top: 12px">
                                        <div class="progress-bar progress-bar-success"></div>
                                    </div>
                                    <!--                                    <!-- The container for the uploaded files -->
                                    <div id="update_img_list">
                                    </div>
                                </td>
                                <td class="info">首页仅显示第一张图片</td>
                            </tr>

                        </table>

                    </div>
                    <table width="100%" border="0" cellspacing="1" cellpadding="1"  style="border:1px solid #cfcfcf;border-top:none;">
                        <tr bgcolor="#23262e">
                            <td height="50" colspan="3"><table width="98%" border="0" cellspacing="1" cellpadding="1">
                                    <tr>
                                        <td width="11%">&nbsp;</td>
                                        <td width="11%"><button name="imageField" type="submit" class="btn btn-primary" > 保 存 </button></td>
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
<link href="https://cdn.bootcss.com/blueimp-file-upload/9.19.2/css/jquery.fileupload.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/blueimp-file-upload/9.19.2/js/vendor/jquery.ui.widget.js"></script>
<script src="https://cdn.bootcss.com/blueimp-file-upload/9.19.2/js/jquery.iframe-transport.js"></script>
<script src="https://cdn.bootcss.com/blueimp-file-upload/9.19.2/js/jquery.fileupload.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/admin/js/imgpreview.min.jquery.js"></script>

<script id="ejs-img-div" type="text/template">
    <div class="img-div-item">
        <a class="img-link" target="_blank" href="<%= jsondata.path %>">
            <%= jsondata.name %>
        </a>
        <a href="javascript:void(0)" class="img-del" onclick="deleteUpImg(this, '<%= jsondata.id %>')">
            <img src="__PUBLIC__/admin/images/remove.png" border="none">
        </a>
        <div class="btn-xs pull-right">
            <select class="img-insert-select">
                <% var thumbsWidths = jsondata.thumb.width.reverse(); %>
                <% thumbsWidths.forEach(function(wh){ %>
                <option value="<%= wh %>">缩略图<%= wh %>px</option>
                <% }) %>
                <option value="0">原图</option>
            </select>
            &nbsp;<label style="font-weight: normal"><input id="main-img-checkbox-<%= jsondata.id %>" type="checkbox" class="set-main-img-checkbox" <% if(jsondata.ismain=='1'){%>checked <%}%> onclick="selectMainPic(this)">主图</label>
            &nbsp;<a href="javascript:void(0)" onclick="addToContent('<%= jsondata.path%>', '<%= jsondata.name%>', this, '<%= jsondata.thumb.prefix %>')"
                     class="btn btn-primary btn-xs" style="color:#fff;">插入</a>
        </div>
    </div>
</script>

<script type="text/javascript">
    var editor;
    KindEditor.ready(function(K) {
        editor = K.create('#yyg_content', {
            resizeType : 1,
            allowPreviewEmoticons : false,
            allowImageUpload : false,
            pasteType : 2,
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


    $(function(){
        $('#yyg_uploadImg').fileupload({
            url: "__URL__/upload",
            dataType: 'json',
            acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i,
            maxFileSize: <?php echo $option->maxImgSize?>,
            maxNumberOfFiles: 8,
            formData:{},
            done: function (e, data) {
                var jsondata = data.result;
                try{
                    jsondata = comm_parseJsonResult(jsondata);
                }catch(ee){}
                renderImgList(jsondata);
            },
            progressall: function (e, data) {
                var progress = parseInt(data.loaded / data.total * 100, 10);
                $('#progress .progress-bar').css(
                    'width',
                    progress + '%'
                );
            }
        }).prop('disabled', !$.support.fileInput)
            .parent().addClass($.support.fileInput ? undefined : 'disabled');

        getAttac();
    });

    function getAttac(){
        var args = {
            "id":'<?php echo $content['id']?>',
        };
        $.post('__URL__/getAttacs', args,function(data){
            if(data){
                var jdatas = null;
                try{
                    jdatas = comm_parseJsonResult(data);
                }catch(e){
                    bootbox.alert(data);
                    return ;
                }
                if(jdatas && jdatas.length > 0){
                    for(var i = 0, len = jdatas.length; i < len; i++){
                        renderImgList(jdatas[i]);
                    }
                    renderImgLink();

                }

            }

        });
    }

    function renderImgList(jsondata){
        var ejsImgDiv = document.getElementById('ejs-img-div').innerHTML;
        var imghtml = ejs.render(ejsImgDiv, { jsondata:jsondata });
        $("#update_img_list").prepend(imghtml);
        $("#yyg_uploadImg_ids").val($("#yyg_uploadImg_ids").val() + "," + jsondata['id']);
        renderImgLink();
    }


    function deleteUpImg(o, attId){
        if(!attId) return false;

        var args = {
            "id":attId,
            "cid":<?php echo $content['id'] ?>
        };
        $.post('__URL__/delAttr',args,function(data){
            if(data == 1){
                $(o).parent().remove();
            }else{
                alert(data);
            }
        });
    }

    function selectMainPic(thiz){
        var mainImgCheckboxs = $(".set-main-img-checkbox");
        var checked = $(thiz).is(':checked');
        if(!checked){
            $("#set_main_img_id").val("null");
        }else{
            $("#set_main_img_id").val($("#set_main_img_id").val() + "," + thiz.id);
        }

        mainImgCheckboxs.each(function(i, o){
            if(checked){
                if(o.id !== thiz.id){
                    $(o).attr('checked', false);
                }
            }
        });
    }


</script>
<include file="Public:footer" />

