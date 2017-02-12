var Class = {
    create: function() { return function() { this.init.apply(this, arguments);}}
};

var meiping_cookie = {};

meiping_cookie.setCookie = function(c_name,value,expiredays)
{
    var exdate=new Date();
    exdate.setDate(exdate.getDate()+expiredays);
    cookieVal=c_name+ "=" +escape(value)+((expiredays==null) ? "" : ";expires="+exdate.toGMTString());
//    alert(cookieVal);
    document.cookie=cookieVal;
};
//获取cookie
meiping_cookie.getCookie = function(c_name)
{
    if (document.cookie.length>0)
      {
      c_start=document.cookie.indexOf(c_name + "=");
      if (c_start!=-1)
        { 
        c_start=c_start + c_name.length+1 ;
        c_end=document.cookie.indexOf(";",c_start);
        if (c_end==-1) c_end=document.cookie.length;
          return unescape(document.cookie.substring(c_start,c_end));
        } 
      }
    return "";
};


meiping_cookie.deleteCookie = function(name){
	 this.setCookie(name,"",{expireDays:-1}); //将过期时间设置为过去来删除一个cookie
};

