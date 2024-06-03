# `IDOTakingMedicineReminderParamModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| takingMedicineId | Int | ID range is 1 to 5 |
| onOff | Int | 0 means off<br/>1 means on |
| startHour | Int | Start time of the reminder |
| startMinute | Int | Start minute of the reminder |
| endHour | Int | Reminder end time|
| endMinute | Int | Reminder end minute |
| repeats | Set<IDOWeek> | Repeat[IDOWeek](../enum/IDOWeek.md) |
| interval | Int | Reminder interval (minutes)<br/>Default is 60 minutes|
| doNotDisturbOnOff | Int | Do Not Disturb time period switch<br/>0 is off<br/>1 is on<br/>Default is off| 
| doNotDisturbStartHour | Int | Do Not Disturb start time | 
 | doNotDisturbStartMinute | Int | Do Not Disturb start minute | 
 | doNotDisturbEndHour | Int | Do Not Disturb end time | 