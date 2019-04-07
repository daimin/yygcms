package model

/*
CREATE TABLE `yyg_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `pagecode` varchar(120) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8
*/

type Category struct {
	Id         int64  `db:"id"`
	Pid        int64  `db:"pid"`
	Name       string `db:"password"`
	Pagecode   string `db:"createtime"`
	Status     int8   `db:"status"`
	Createtime string `db:"createtime"`
	Modifytime string `db:"modifytime"`
}
