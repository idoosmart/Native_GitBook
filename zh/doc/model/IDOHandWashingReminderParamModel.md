# `IDOHandWashingReminderParamModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| onOff | Int | 0：关闭<br/>1：打开<br/>默认关闭 |
| startHour | Int | 提醒的开始时间 |
| startMinute | Int | 提醒的开始分钟 |
| endHour | Int | 提醒结束时间 |
| endMinute | Int | 提醒结束分钟 |
| repeats      | Set<IDOWeek> | 重复[IDOWeek](../enum/IDOWeek.md) 集合 |
| interval | Int | 提醒间隔（分钟）<br/>默认为 60 分钟 |

