package models

type UserSettings struct {
	Id                     int64
	UserId                 int64
	Is2FaEnabled           bool
	IsNotificationsEnabled bool
}
