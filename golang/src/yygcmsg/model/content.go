package model

type Content struct {
	Id              int  `db:"id"`
	Title           string `db:"title"`
	Content         string `db:"content"`
	Intro           string `db:"intro"`
	EmbedCode       string `db:"embed_code"`
	Relurl          string `db:"relurl"`
	CategoryId       int    `db:"category_id"`
	Status          uint8    `db:"status"`
	Createtime      string `db:"createtime"`
	Modifytime      string `db:"modifytime"`
	Viewnum         int    `db:"viewnum"`
	Lastviewtime    string `db:"lastviewtime"`
	Commentnum      int    `db:"commentnum"`
	Lastcommenttime string `db:"lastcommenttime"`
	Order           int    `db:"order"`
	Topnum          int    `db:"topnum"`
	Indexdisplay    string    `db:"indexdisplay"`
	AuthorId        int    `db:"author_id"`
	EditorId        int    `db:"editor_id"`
}
