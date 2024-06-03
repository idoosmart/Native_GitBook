# `IDOScreenBrightnessModel`

| Properties | Type | Description |
| ----------- | ------- | ------------ |
| level | Int | Brightness level<br/>(0-100) |
| opera | Int | 0 automatic<br/>1 manual<br/>If it is an automatic synchronization configuration, please send 00; if it is a user adjustment, please Send 01 |
| mode | Int | 0 Specify level<br/>1 Use ambient light sensor<br/>2 Level does not matter |
| autoAdjustNight | Int | Automatic brightness adjustment at night<br/>0 Invalid, defined by firmware <br/>1 Off<br/>2 Automatic brightness adjustment at night<br/>3 Night brightness reduction using set time|
| startHour | Int | start time hours|
| startMinute | Int | start time minutes|
| endHour | Int | end time hours | 
 | endMinute | Int | end time minutes | 
 | nightLevel | Int | night brightness | 
 | showInterval | Int | display interval | 
