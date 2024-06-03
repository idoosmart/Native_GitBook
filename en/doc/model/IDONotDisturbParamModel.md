# `IDONotDisturbParamModel`

| Attribute | Type | Description |
| ----------- | ------- | ------------ |
| switchFlag | int | switch<br/>1 on<br/>0 off|
| startHour | int | start time<br/>hour|
| startMinute | int | start time<br/>minute|
| endHour | int | end time<br/>hour|
| endMinute | int | end time<br/>minute|
| haveTimeRange | int | whether there is a time range<br/>0 invalid<br/>1 means no time range< br/>2 means there is a time range<br/>The menu `getSupportDisturbHaveRangRepeat` is enabled and valid |
| noontimeRESTOnOff | int | Do not disturb switch during the day<br/>1 On<br/>0 Off |
| noontimeRESTStartHour | int | Start time<br/>hour|
| noontimeRESTStartMinute | int | start time<br/>minute|
| noontimeRESTEndHour | int | end time<br/>hour|
| noontimeRESTEndMinute | int | end time<br/>minute|
 | allDayOnOff | int | All-day Do Not Disturb<br/>1 On<br/>0 Off<br/>The menu `setOnlyNoDisturbAllDayOnOff` is enabled and valid |
| intelligentOnOff | int | Intelligent Do Not Disturb switch<br/>1 On<br/> br/>0 Close<br/>The menu `setOnlyNoDisturbSmartOnOff` is enabled and valid |
