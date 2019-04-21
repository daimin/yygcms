package service

import (
	"github.com/donnie4w/go-logger/logger"
)


func GetAttacByContentId(cid int) []string  {
	attacUrls := make([]string, 0)
	attacIds := make([]int, 0)
	rows, err := db.Query("select att_id from yyg_attac_rel where rel_id=? and ismain=1", cid)
	if err != nil{
		logger.Error(err)
	}
	for rows.Next() {
		var attId int
		err = rows.Scan(&attId)
		if err != nil{
			logger.Warn(err)
		}
		attacIds = append(attacIds, attId)
	}

	for _, v := range attacIds{
		url := GetAttacUrl(v)
		if len(url) > 0{
			attacUrls = append(attacUrls, url)
		}
	}
	return attacUrls
}

func GetAttacUrl(id int) string  {
	row := db.QueryRow("select `path` from yyg_attac where id=?", id)
	var url string
	err := row.Scan(&url)
	if err != nil{
		logger.Warn(err)
	}

	return url

}