# `IDOWalkRemindModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| onOff | Int | 0 off, 1 on |
| goalStep | Int | goal step (deprecated) |
| startHour | Int | start time in hours |
| startMinute | Int | start time in minutes |
| endHour | Int | end time (hours) |
| endMinute | Int | end time (minutes) |
| repeats | Set<IDOWeek> | repeat [IDOWeek](../enum/IDOWeek.md) |
| isOpen | Bool | Repeat switch|
| goalTime | Int | Goal time (deprecated) |
| notifyFlag | Int | Notification type<br/>0: Invalid<br/>1: Allow notification<br/>2: Silent notification <br/>3: Turn off notifications<br/>Require firmware to enable `setWalkReminderAddNotify` |
| doNotDisturbOnOff | Int | Do Not Disturb switch<br/>0 Off<br/>1 On<br/>Require firmware to enable `getSupportSetGetNoReminderOnWalkReminderV2 ` |
| noDisturbStartHour | Int | Do not disturb start time (hours)<br/> Requires firmware to enable `getSupportSetGetNoReminderOnWalkReminderV2` |
| noDisturbStartMinute | Int | Do not disturb start time (minutes)<br/> Requires firmware to enable `getSupportSetGetNoReminderOnWalkReminderV2 ` |
| noDisturbEndHour | Int | Do not disturb end time (hours)<br/>Requires firmware to enable `getSupportSetGetNoReminderOnWalkReminderV2` |
| noDisturbEndMinute | Int | Do not disturb end time (minutes)<br/> Requires firmware to enable `getSupportSetGetNoReminderOnWalkReminderV2 ` |
