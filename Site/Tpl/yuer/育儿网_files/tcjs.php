
function LoadAdJs(zone_id)
{
	var Timer=new Date();
	var n = Timer.getYear()+"_" + Timer.getMonth()+ "_" + Timer.getDate() +"_" +Timer.getHours();
	document.writeln("<scri"+"pt src='http://tc.ci123.com/adscache/caches/"+zone_id+".js?n="+n+"'></scr"+ "ipt>");
}
