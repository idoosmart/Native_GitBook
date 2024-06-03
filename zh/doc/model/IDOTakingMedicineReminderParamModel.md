# `IDOTakingMedicineReminderParamModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| takingMedicineId | Int | ID范围为1到5 |
| onOff | Int | 0 表示关闭<br/>1 表示开启 |
| startHour | Int | 提醒的开始时间 |
| startMinute | Int | 提醒的起始分钟 |
| endHour | Int | 提醒结束时间 |
| endMinute | Int | 提醒的结束分钟 |
| repeats | Set<IDOWeek> | 重复[IDOWeek](../enum/IDOWeek.md) |
| interval | Int | 提醒间隔（分钟）<br/>默认为 60 分钟 |
| doNotDisturbOnOff | Int | 请勿打扰时间段开关<br/>0为关<br/>1为开<br/>默认为关 |
| doNotDisturbStartHour | Int | 请勿打扰开始时间 |
| doNotDisturbStartMinute | Int | 请勿打扰开始分钟 |
| doNotDisturbEndHour | Int | 请勿打扰结束时间 |
| doNotDisturbEndMinute | Int | 请勿打扰结束分钟 |

