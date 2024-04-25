# `IDOStressSwitchParamModel`

| Attribute | Type | Description |
| ----------- | ------- | ------------ |
| onOff | int | Master switch<br/>1 on 0 off|
| startHour | int | start time|
| startMinute | int | start time minute|
| endHour | int | end time|
| remindOnOff | int | Pressure reminder switch<br/>1 on, 0 off<br/>on_off is off, the reminder will not work |
| interval | int | Reminder interval, unit minute, default 60 minutes |
| highThreshold | int | High pressure threshold |
| stressThreshold | int | Pressure calibration threshold, the default is 80 <br/>Requires firmware to enable the menu to support setSendCalibrationThreshold |
| notifyFlag | int | Notification type<br/>0: Invalid<br/>1: Allow notifications<br/>2: Silent notifications<br/>3: Turn off notifications<br/>Need firmware to enable menu support getPressureNotifyFlagMode |
| repeats | Set<IDOWeek> | Repeat [IDOWeek](../enum/IDOWeek.md) |

