package controllers

import (
	"github.com/labstack/echo"
	"strconv"
)

var DefaultPageSize int = 10

type BaseController struct {
	echo.Context
	jsonData map[string]interface{}
	//userme   model.User
}

type PageArgs struct {
	Pagesize int
	Pageno int
	Start int
}


/*
组装执行成功返回消息
可以设置公共参数
 */
func successResut(resutMap map[string]interface{}) map[string]interface{} {
	resutMap["state"] = "success"
	return resutMap
}

/*
组装执行失败返回消息
可以设置公共参数
 */
func failResut(resutMap map[string]interface{}) map[string]interface{} {
	resutMap["state"] = "fail"
	return resutMap
}

//public function getPageArgs(){
//$pagesize = intval(I("get.pagesize", 10));
//$pageno = intval(I("get.pageno", 1));
//$start = ($pageno - 1) * $pagesize;
//return ['pagesize' => $pagesize, 'pageno' => $pageno, 'start' => $start];
//}

func getPageArgs(c echo.Context) PageArgs{
	pagesize, err := strconv.Atoi(c.QueryParam("pagesize"))
	if err != nil{
		pagesize = DefaultPageSize
	}
	pageno, err := strconv.Atoi(c.QueryParam("pageno"))
	if err != nil{
		pageno = 1
	}

	start := (pageno - 1) * pagesize

	return PageArgs{Pagesize:pagesize, Pageno:pageno, Start:start}
}