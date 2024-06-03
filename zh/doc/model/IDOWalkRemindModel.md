# `IDOWalkRemindModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| onOff | Int | 0 关，1 开 |
| goalStep | Int | 目标步骤（已弃用） |
| startHour | Int | 开始时间（小时） |
| startMinute | Int | 开始时间（分钟） |
| endHour | Int | 结束时间（小时） |
| endMinute | Int | 结束时间（分钟） |
| repeats | Set<IDOWeek> | 重复[IDOWeek](../enum/IDOWeek.md) |
| isOpen | Bool | 重复开关 |
| goalTime | Int | 目标时间（已弃用） |
| notifyFlag | Int | 通知类型<br/>0：无效<br/>1：允许通知<br/>2：静默通知<br/>3：关闭通知<br/>需要固件启用`setWalkReminderAddNotify` |
| doNotDisturbOnOff | Int | 请勿打扰开关<br/>0 关闭<br/>1 开启<br/>需要固件启用 `getSupportSetGetNoReminderOnWalkReminderV2` |
| noDisturbStartHour | Int | 请勿打扰开始时间（小时）<br/>需要固件启用 `getSupportSetGetNoReminderOnWalkReminderV2` |
| noDisturbStartMinute | Int | 请勿打扰开始时间（分钟）<br/>需要固件启用 `getSupportSetGetNoReminderOnWalkReminderV2` |
| noDisturbEndHour | Int | 请勿打扰结束时间（小时）<br/>需要固件启用 `getSupportSetGetNoReminderOnWalkReminderV2` |
| noDisturbEndMinute | Int | 请勿打扰结束时间（分钟）<br/>需要固件启用 `getSupportSetGetNoReminderOnWalkReminderV2` |
