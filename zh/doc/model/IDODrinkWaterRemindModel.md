# `IDODrinkWaterRemindModel`

| Attribute | Type | Description |
| ----------- | ------- | ------------ |
| onOff | int | 开关<br/>0 关<br/>1 开 |
| startHour | int | 开始时间 时 |
| startMinute | int | 开始时间 分 |
| endHour | int | 结束时间 时 |
| endMinute | int | 结束时间 分 |
| repeats | Set<IDOWeek> | 重复[IDOWeek](../enum/IDOWeek.md) 集合 |
| interval | int | 提醒间隔<br/>单位分钟 |
| notifyFlag | int | 通知类型 <br/>0：无效 <br/>1：允许通知<br/>2：静默通知<br/>3：关闭通知 <br/>需要固件开启功能表支持 `setDrinkWaterAddNotifyFlag` |
| doNotDisturbOnOff | int | 免提醒开关 00关 01开<br/>需要固件开启功能表支持 `setNoReminderOnDrinkReminder` |
| noDisturbStartHour | int | 免提醒开始时间 时<br/>需要固件开启功能表支持 `setNoReminderOnDrinkReminder` |
| noDisturbStartMinute | int | 免提醒开始时间 分<br/>需要固件开启功能表支持 `setNoReminderOnDrinkReminder` |
| noDisturbEndHour | int | 免提醒结束时间 时<br/>需要固件开启功能表支持 `setNoReminderOnDrinkReminder` |
| noDisturbEndMinute | int | 免提醒结束时间 分<br/>需要固件开启功能表支持 `setNoReminderOnDrinkReminder` |

