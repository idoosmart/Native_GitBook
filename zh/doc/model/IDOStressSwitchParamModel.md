# `IDOStressSwitchParamModel`

| Attribute | Type | Description |
| ----------- | ------- | ------------ |
| onOff | int | 总开关 <br/>1开 0关闭 |
| startHour | int | 开始时间 时 |
| startMinute | int | 开始时间 分 |
| endHour | int | 结束时间 时 |
| endMinute | int | 结束时间 分 |
| remindOnOff | int | 压力提醒开关 <br/>1开 0关<br/>on_off为关则提醒不起作用 |
| interval | int | 提醒间隔,单位分钟 默认60分钟 |
| highThreshold | int | 压力过高阈值 |
| stressThreshold | int | 压力校准阈值，默认是80 <br/>需要固件开启功能表支持 setSendCalibrationThreshold |
| notifyFlag | int | 通知类型 <br/>0：无效 <br/>1：允许通知<br/>2：静默通知<br/>3：关闭通知 <br/>需要固件开启功能表支持 getPressureNotifyFlagMode |
| repeats | Set<IDOWeek> | 重复[IDOWeek](../enum/IDOWeek.md) |
