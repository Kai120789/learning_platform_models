package models

import "github.com/jackc/pgx/v5/pgtype"

type UserInfo struct {
	Id       int64
	UserId   int64
	Name     string
	Surname  string
	Lastname pgtype.Text
	City     pgtype.Text
	About    pgtype.Text
	Role     string
	Class    pgtype.Int8
	Status   string
}
