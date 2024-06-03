# `IDOSpo2SwitchParamModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| onOff | Int | SpO2 All day switch<br/>1 On<br/>0 Off|
| startHour | Int | Start time (hour) |
| startMinute | Int | Start time (minute) |
| endHour | Int | End time (hours) |
| endMinute | Int | End time (minutes) |
| lowSpo2OnOff | Int | Low SpO2 switch<br/>1 On<br/>0 Off<br/>Requires menu `setSpo2AllDayOnOff` Support |
| lowSpo2Value | Int | Low SpO2 threshold<br/>Requires support of menu "v3SupportSetSpo2LowValueRemind" |
| notifyFlag | Int | Notification type<br/>0: Invalid<br/>1: Allow notification<br/> 2: Silent notification<br/>3: Disable notification<br/>Requires the support of menu "getSpo2NotifyFlag"|
