package models

import "time"

type Schedule struct {
	Id        int64
	GroupId   int64
	RepeatOn  string
	StartDate *time.Time
	EndDate   *time.Time
	IsActive  bool
}
