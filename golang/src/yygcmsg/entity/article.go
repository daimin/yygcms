package entity

type Article struct {
	Id              int
	Title           string
	Content         string
	Intro           string
	CategoryId       int
	CategoryName       string
	Createtime      string
	Modifytime      string
	Viewnum         int
	Lastviewtime    string
	Commentnum      int
	Lastcommenttime string
	AuthorId        int
	AuthorName        string
	MainImg  string
}
