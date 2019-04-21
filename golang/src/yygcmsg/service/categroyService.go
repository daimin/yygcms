package service

import (
	"github.com/donnie4w/go-logger/logger"
	"yygcmsg/model"
)


func GetCategoryById(id int) *model.Category{
	cate := model.Category{}
	err := db.Get(&cate, "select * from yyg_category where Id=?", id)
	if err != nil {
		logger.Error(err)
	}
	return &cate
}

