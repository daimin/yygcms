package model

type Admins struct {
	Id            int64  `db:"id"`
	Name          string `db:"name"`
	Password      string `db:"password"`
	Createtime    string `db:"createtime"`
	Lastlogintime string `db:"lastlogintime"`
	Status        int8   `db:"status"`
	Role          int    `db:"role"`
}
