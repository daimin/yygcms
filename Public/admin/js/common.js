
/*图片预览*/
	function renderImgLink(){
		imgLinks = $('#update_img_list div .img-link');
		
		if(imgLinks.length <= 0){
             return ;
		}
		var ils = imgLinks.toArray();
		var isAllFile = true;
		for(var i = 0, len = ils.length; i < len; i++){
            var li = ils[i];
            var href = $(li).attr("href");
            var ext = href.substring(href.lastIndexOf(".")+1);
            ext = ext.toLowerCase();
            if(ext == 'png' || ext == 'gif' || ext == 'jpg' || ext == 'jpeg' || ext == 'bmp'){
            	isAllFile = false;
            	break;
            }
            
		}
		if(isAllFile) return;
		imgLinks.imgPreview({
		      containerID: 'imgPreviewWithStyles',
		      imgCSS: {
		          // Limit preview size:
		          height: 200
		      },
		      // When container is shown:
		      onShow: function(link){
		          // Animate link:
		          $(link).stop().animate({opacity:0.4});
		          // Reset image:
		          $('img', this).stop().css({opacity:0});
		      },
		      // When image has loaded:
		      onLoad: function(){
		          // Animate image
		          $(this).animate({opacity:1}, 300);
		      },
		      // When container hides: 
		      onHide: function(link){
		          // Animate link:
		          $(link).stop().animate({opacity:1});
		      }
		  });
	}
	
	function addToContent(imgUrl, name){
		var ext = imgUrl.substring(imgUrl.lastIndexOf(".")+1);
		ext = ext.toLowerCase();
		if(ext == 'png' || ext == 'gif' || ext == 'jpg' || ext == 'jpeg' || ext == 'bmp'){
			editor.appendHtml('<img src=" '+ imgUrl + '" alt="" />');
		}else{
			editor.appendHtml('<a target="_blank" href="'+ imgUrl + '">' + name + '</a>');
		}
		
	}
	
	
function changeContentOrder(o, reqUrl){
	
	 var cname = o.name;
	 
	 var cid = 0;
	 var cs = cname.split("_");
	 
	 if(cs && cs.length > 1){
		 cid = cs[1];
	 }
	 
	 var args = {
			  "id":cid,
	          "order":o.value
	        };

    $.post(reqUrl + '/changeContentOrder',args,function(data){
        window.location.reload();
    });
}

function show_err_alert(title, message){
	bootbox.alert({
		title: '<div class="yyg-msg-title"><span class="glyphicon glyphicon-remove-circle yyg-error" aria-hidden="true"></span>' + title + '</div>',
		message: '<div class="yyg-msg-message">' + message + '</div>',
		size: 'small'
	});
}

function show_success_alert(title, message, callback){
	bootbox.alert({
		title: '<div class="yyg-msg-title"><span class="glyphicon glyphicon-ok yyg-success" aria-hidden="true"></span>' + title + '</div>',
		message: '<div class="yyg-msg-message">' + message + '</div>',
		size: 'small',
		callback:callback
	});
}

function comm_parseJsonResult(result) {
	if(typeof result != 'object'){
		result = JSON.parse(result);
	}
	if(result['errCode'] != 0){
		show_err_alert('错误', result['errMsg']);

	}else{
		return result['data'];
	}
}