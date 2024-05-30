# `IDOStressSwitchModel`

| Attribute       | Type         | Description                                                  |
| --------------- | ------------ | ------------------------------------------------------------ |
| onOff           | int          | Master switch <br/>1 on 0 off                                |
| startHour       | int          | start time hours                                             |
| startMinute     | int          | start time minutes                                           |
| endHour         | int          | end time hours                                               |
| endMinute       | int          | end time minutes                                             |
| remindOnOff     | int          | Pressure reminder switch <br/>1 on 0 off<br/>on_off is off, the reminder will not work |
| interval        | int          | Reminder interval, unit minute, default 60 minutes           |
| highThreshold   | int          | High pressure threshold                                      |
| stressThreshold | int          | Pressure calibration threshold, default is 80 <br/>Requires firmware to enable menu support setSendCalibrationThreshold |
| notifyFlag      | int          | Notification type <br/>0: Invalid <br/>1: Allow notification<br/>2: Silent notification<br/>3: Close notification <br/>Requires firmware to enable menu support getPressureNotifyFlagMode |
| repeats         | Set<IDOWeek> | Repeat[IDOWeek](../enum/IDOWeek.md)                          |
