package controllers

import (
	"github.com/labstack/echo"
	"strconv"
	"yygcmsg/entity"
)

var DefaultPageSize int = 10

type BaseController struct {
	echo.Context
	jsonData map[string]interface{}
	//userme   model.User
}

/*
组装执行成功返回消息
可以设置公共参数
 */
func successResut(resutMap map[string]interface{}) map[string]interface{} {
	resutMap["retCode"] = "0"
	return resutMap
}

/*
组装执行失败返回消息
可以设置公共参数
 */
func failResut(resutMap map[string]interface{}) map[string]interface{} {
	resutMap["retCode"] = "-1"
	return resutMap
}

//public function getPageArgs(){
//$pagesize = intval(I("get.pagesize", 10));
//$pageno = intval(I("get.pageno", 1));
//$start = ($pageno - 1) * $pagesize;
//return ['pagesize' => $pagesize, 'pageno' => $pageno, 'start' => $start];
//}

func getPageArgs(c echo.Context) entity.PageArgs{
	pagesize, err := strconv.Atoi(c.QueryParam("pagesize"))
	if err != nil{
		pagesize = DefaultPageSize
	}
	pageno, err := strconv.Atoi(c.QueryParam("pageno"))
	if err != nil{
		pageno = 1
	}

	start := (pageno - 1) * pagesize

	return entity.PageArgs{Pagesize:pagesize, Pageno:pageno, Start:start}
}