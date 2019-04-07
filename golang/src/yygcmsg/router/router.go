package router

import (
	"yygcmsg/controllers"

	"github.com/donnie4w/go-logger/logger"
	"github.com/labstack/echo"
	"github.com/labstack/echo/middleware"
	"strings"
	"yygcmsg/conf"
	"yygcmsg/filter"
)

var e *echo.Echo

/**
* echo 初始化设置
 */
func Start() {
	logger.Debug("start router...")

	//初始化echo
	e = echo.New()

	//设置静态资源文件路径
	e.Static("/", "static")

	e.Use(middleware.Logger())
	e.Use(middleware.Recover())

	//自定义中间件拦截器
	e.Use(filter.OpenTracing())

	initRouter()

	e.Logger.Fatal(e.Start(":" + conf.Config.Port))
}

/**
api地址 拼接版本
*/
func genUrl(url string) string {
	if strings.HasPrefix(url, "/") {
		return "/" + conf.Config.ApiVersion + url
	} else {
		return "/" + conf.Config.ApiVersion + "/" + url
	}
}

/**
初始化路由
*/
func initRouter() {
	e.GET(genUrl("/articles/news"), controllers.News)
	//e.GET(genUrl("/user/UpdatePassword"), controllers.UpdatePassword)
	//e.GET(genUrl("/user/SelectUser"), controllers.SelectUser)
	//e.GET(genUrl("/user/DeleteUser"), controllers.DeleteUser)
}
