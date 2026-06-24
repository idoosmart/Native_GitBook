# 查询手机日历同步开关
* [IDOPhoneCalendarSyncSwitchModel](../model/IDOPhoneCalendarSyncSwitchModel.md)

功能表：`supportPhoneCalendarReminder`

Swift
```swift
Cmds.getPhoneCalendarSyncSwitch { err, model in
    if err.code == 0 { /* model?.syncOnOff */ }
}
```

Kotlin
```kotlin
Cmds.getPhoneCalendarSyncSwitch().send { rs ->
    if (rs.error.code == 0) { /* rs.res?.syncOnOff */ }
}
```
