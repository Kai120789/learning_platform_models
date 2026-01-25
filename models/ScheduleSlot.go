package models

import "time"

type ScheduleSlots struct {
	Id         int64
	ScheduleId int64
	Weekday    string
	StartTime  *time.Time
	EndTime    *time.Time
	Duration   int64
}
