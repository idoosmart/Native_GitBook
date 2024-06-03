# `IDOHeartRateModeParamModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| mode | Int | 0：关闭<br/>1：自动（5分钟）<br/>2：连续监控（5秒）<br/>3：手动模式 |
| hasTimeRange | Int | 时间范围<br/>0：否<br/>1：是 |
| startHour | Int | 开始时间（24 小时制，0-23） |
| startMinute | Int | 开始分钟 (0-59) |
| endHour | Int | 结束时间 |
| endMinute | Int | 结束分钟 |
| measurementInterval | Int | 测量间隔<br/>单位：分钟 |
