var jsddm  = {
	timeout    : 500,
    closetimer : 0,
	ddmenuitem : 0
			
};

var jsddm_open = function()
{
       $(this).css("backgroundColor", "#000000");
	jsddm_canceltimer();
	jsddm_close();
	var ul = $(this).find('ul').eq(0);
	var as = ul.find("li a");
	var tthis = this;
	$(tthis).width()
	as.each(function(){
		$(this).css("width", $(tthis).width()); 
	});
	ul.css("width", $(tthis).width());
        ul.css("z-index", 9999);
	jsddm.ddmenuitem = ul.css('visibility', 'visible');
        
}

var jsddm_timer = function()
{
       $(this).css("backgroundColor", "");
	jsddm.closetimer = window.setTimeout(jsddm_close, jsddm.timeout);
};

var jsddm_close = function()
{
	if(jsddm.ddmenuitem) jsddm.ddmenuitem.css('visibility', 'hidden');
};

var jsddm_canceltimer = function(){
    if(jsddm.closetimer)
	{	window.clearTimeout(jsddm.closetimer);
	    jsddm.closetimer = null;
	}
};

$(document).ready(function() { 
	
	document.onclick = function(){
		jsddm_close();
	};
	
	$('.jsddm > li').bind('mouseover', jsddm_open);
	$('.jsddm > li').bind('mouseout',  jsddm_timer);
});

