# `IDOHandWashingReminderParamModel`

| Property| Type| Description|
| ----------- | ------- | ------------ |
| onOff | Int | 0: Off<br/>1: On<br/>Default off |
| startHour | Int | The start time of the reminder |
| startMinute | Int | The start minute of the reminder |
| endHour | Int | Reminder End time | 
 | endMinute | Int | Reminder end minutes | 
 | repeats | Set<IDOWeek> | Repeat [IDOWeek](../enum/IDOWeek.md) Set | 
| interval | Int | Reminder interval (minutes) < br/>Default is 60 minutes|

