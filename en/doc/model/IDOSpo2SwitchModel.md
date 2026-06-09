# `IDOSpo2SwitchModel`

| 属性         | 类型 | 说明                                                         |
| ------------ | ---- | ------------------------------------------------------------ |
| onOff        | Int  | SpO2 全天开关<br/>1 开<br/>0 关                              |
| startHour    | Int  | 开始时间（小时）                                             |
| startMinute  | Int  | 开始时间（分钟）                                             |
| endHour      | Int  | 结束时间（小时）                                             |
| endMinute    | Int  | 结束时间（分钟）                                             |
| lowSpo2OnOff | Int  | 低 SpO2 开关<br/>1 开<br/>0 关<br/>需要菜单 `setSpo2AllDayOnOff` 的支持 |
| lowSpo2Value | Int  | 低 SpO2 阈值<br/>需要菜单“v3SupportSetSpo2LowValueRemind”的支持 |
| notifyFlag   | Int  | Notification type<br/>0: Invalid<br/>1: Allow notifications<br/>2: Silent notifications<br/>3: Disable notifications<br/>Requires menu `getSpo2NotifyFlag` support |
| measurementInterval | Int  | Measurement interval in minutes<br/>Optional, default `0`<br/>IDR01 project supports App-configured measurement interval |

