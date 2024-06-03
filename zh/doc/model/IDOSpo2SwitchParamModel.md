# `IDOSpo2SwitchParamModel`

| 属性        | 类型    | 说明         |
| ----------- | ------- | ------------ |
| onOff | Int | SpO2 全天开关<br/>1 开<br/>0 关 |
| startHour | Int | 开始时间（小时） |
| startMinute | Int | 开始时间（分钟） |
| endHour | Int | 结束时间（小时） |
| endMinute | Int | 结束时间（分钟） |
| lowSpo2OnOff | Int | 低 SpO2 开关<br/>1 开<br/>0 关<br/>需要菜单 `setSpo2AllDayOnOff` 的支持 |
| lowSpo2Value | Int | 低 SpO2 阈值<br/>需要菜单“v3SupportSetSpo2LowValueRemind”的支持 |
| notifyFlag | Int | 通知类型<br/>0：无效<br/>1：允许通知<br/>2：静默通知<br/>3：禁用通知<br/>需要菜单“getSpo2NotifyFlag”的支持 |
