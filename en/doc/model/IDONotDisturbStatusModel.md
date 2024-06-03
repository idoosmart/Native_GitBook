# `IDONotDisturbStatusModel`

| Property| Type| Description|
| ----------- | ------- | ------------ |
| switchFlag | Int | switch status<br/>1: on<br/>0: off<br/>-1: not supported|
| startHour | Int | start time|
| startMinute | Int | start minute|
| endHour | Int | End time | 
 | endMinute | Int | End minute | 
 | haveTimeRange | Int | Whether there is a time range<br/>0: Invalid<br/>1: No time range<br/>2: There is time Range |
| weekRepeat | Int | Repeat<br/>bit0: invalid<br/>(bit1 - bit7): Monday to Sunday |
| noontimeRestOnOff | Int | Noon break switch, headphone reminder switch<br/>1: On<br/>0: Off<br/>-1: Not supported|
| noontimeRestStartHour | Int | Reminder start time|
| noontimeRestStartMinute | Int | Reminder start minute|
| noontimeRestEndHour | Int | Reminder end time|
| noontimeRestEndMinute | Int | Reminder end minute|
| allDayOnOff | Int | All-day do not disturb switch<br/>1: On<br/>0: Off<br/>-1: Not supported|
| intelligentOnOff | Int | Intelligent Do not disturb switch<br/>1: On<br/>0: Off<br/>-1: Not supported|
