package service

import (
	"github.com/donnie4w/go-logger/logger"
	_ "github.com/go-sql-driver/mysql"
	"github.com/jmoiron/sqlx"

	"strconv"
	"yygcmsg/conf"
)

/**
sqlx mysql demo
https://stackoverflow.com/questions/21294236/golang-sqlx-not-throwing-error
https://github.com/jmoiron/sqlx
*/

var (
	//数据库操作对象
	db *sqlx.DB
)

/**
初始化数据库链接
测试执行查询t_user总数
*/
func Start() {
	logger.Info("start connection databases...")
	logger.Info(conf.Config.Database)

	sqlSession, err := sqlx.Open("mysql", conf.Config.Database.Db_user+":"+conf.Config.Database.Db_pass+"@("+conf.Config.Database.Db_host+":"+strconv.Itoa(conf.Config.Database.Db_port)+")/"+conf.Config.Database.Db_name+"?parseTime=true")
	if err != nil {
		panic("open database error!")
	}

	if err := sqlSession.Ping(); err != nil {
		panic("connection database fail!")
	}

	db = sqlSession
	logger.Info("connection database success...")

	// 测试数据库查询
	var count int
	if err = db.Get(&count, "SELECT count(1) FROM yyg_admins"); err != nil {
		logger.Error(err)
		return
	}
	logger.Debug("count t_user :", count)

}
