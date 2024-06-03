# `IDONotDisturbParamModel`

| Attribute | Type | Description |
| ----------- | ------- | ------------ |
| switchFlag | int | 开关<br/>1 开启<br/>0 关闭 |
| startHour | int | 开始时间<br/>时 |
| startMinute | int | 开始时间<br/>分 |
| endHour | int | 结束时间<br/>时 |
| endMinute | int | 结束时间<br/>分 |
| haveTimeRange | int | 是否有时间范围 <br/>0 无效<br/>1 表示无时间范围<br/>2 表示有时间范围<br/>功能表`getSupportDisturbHaveRangRepeat`开启有效 |
| noontimeRESTOnOff | int | 白天勿扰开关 <br/>1 开启<br/>0 关闭 |
| noontimeRESTStartHour | int | 开始时间<br/>时 |
| noontimeRESTStartMinute | int | 开始时间<br/>分 |
| noontimeRESTEndHour | int | 结束时间<br/>时 |
| noontimeRESTEndMinute | int | 结束时间<br/>分 |
| allDayOnOff | int | 全天勿扰 <br/>1 开启<br/>0 关闭<br/>功能表`setOnlyNoDisturbAllDayOnOff`开启有效 |
| intelligentOnOff | int | 智能勿扰开关 <br/>1 开启<br/>0 关闭<br/>功能表`setOnlyNoDisturbSmartOnOff`开启有效 |
