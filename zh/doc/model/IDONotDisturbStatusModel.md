# `IDONotDisturbStatusModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| switchFlag | Int | 开关状态<br/>1：开<br/>0：关<br/>-1：不支持 |
| startHour | Int | 开始时间 |
| startMinute | Int | 开始分钟 |
| endHour | Int | 结束时间 |
| endMinute | Int | 结束分钟 |
| haveTimeRange | Int | 是否有时间范围<br/>0：无效<br/>1：无时间范围<br/>2：有时间范围 |
| weekRepeat | Int | 重复<br/>bit0：无效<br/>(bit1 - bit7)：周一至周日 |
| noontimeRestOnOff | Int | 中午休息开关、耳机提醒开关<br/>1：开<br/>0：关<br/>-1：不支持 |
| noontimeRestStartHour | Int | 提醒开始时间 |
| noontimeRestStartMinute | Int | 提醒开始分钟 |
| noontimeRestEndHour | Int | 提醒结束时间 |
| noontimeRestEndMinute | Int | 提醒结束分钟 |
| allDayOnOff | Int | 全天免打扰开关<br/>1：开<br/>0：关<br/>-1：不支持 |
| intelligentOnOff | Int | 智能免打扰开关<br/>1：开<br/>0：关<br/>-1：不支持 |
