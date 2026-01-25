package models

type Webinar struct {
	Id             int64
	GroupId        int64
	SubjectId      int64
	ScheduleSlotId int64
	Status         string
	MeetLink       string
	BoardId        int64
}
