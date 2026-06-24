# 设置手机日历同步开关与权限
* [IDOPhoneCalendarSyncSetModel](../model/IDOPhoneCalendarSyncSetModel.md)
* [IDOPhoneCalendarSyncSetReplyModel](../model/IDOPhoneCalendarSyncSetReplyModel.md)

功能表：`supportPhoneCalendarReminder`

Swift
```swift
let model = IDOPhoneCalendarSyncSetModel(syncOnOff: 1, calendarPermissionStatus: 1)
Cmds.setPhoneCalendarSync(model) { err, reply in
    if err.code == 0 { /* reply?.errCode */ }
}
```

Kotlin
```kotlin
val model = IDOPhoneCalendarSyncSetModel(syncOnOff = 1, calendarPermissionStatus = 1)
Cmds.setPhoneCalendarSync(model).send { rs ->
    if (rs.error.code == 0) { /* rs.res?.errCode */ }
}
```
