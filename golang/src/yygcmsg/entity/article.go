package entity

type Article struct {
	Id              int64
	Title           string
	Content         string
	Intro           string
	EmbedCode       string
	Relurl          string
	CategoryId       int
	CategoryName       string
	Createtime      string
	Modifytime      string
	Viewnum         int
	Lastviewtime    string
	Commentnum      int
	Lastcommenttime string
	AuthorId        int
	AuthorName        int
}
