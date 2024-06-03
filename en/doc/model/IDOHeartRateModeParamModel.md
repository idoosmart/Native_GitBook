# `IDOHeartRateModeParamModel`

| Property| Type| Description|
| ----------- | ------- | ------------ |
| mode | Int | 0: Off<br/>1: Automatic (5 minutes)<br/>2: Continuous monitoring (5 seconds)<br/>3: Manual mode|
| hasTimeRange | Int | Time range<br/ >0: No<br/>1: Yes |
| startHour | Int | Start time (24-hour clock, 0-23) |
| startMinute | Int | Start minute (0-59) |
| endHour | Int | End time|
| endMinute | Int | End minute|
| measurementInterval | Int | Measurement interval<br/>Unit: minutes|
