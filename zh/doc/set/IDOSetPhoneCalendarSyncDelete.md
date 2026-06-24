# 增量同步删除手机日历条目
* [IDOPhoneCalendarSyncDeleteModel](../model/IDOPhoneCalendarSyncDeleteModel.md)
* [IDOPhoneCalendarSyncDeleteReplyModel](../model/IDOPhoneCalendarSyncDeleteReplyModel.md)
* [IDOPhoneCalendarDeleteItemModel](../model/IDOPhoneCalendarDeleteItemModel.md)

功能表：`supportPhoneCalendarReminder`

Swift
```swift
let item = IDOPhoneCalendarDeleteItemModel(eventId: "evt_001", calendarId: "cal_work", startTime: 1719000000)
let model = IDOPhoneCalendarSyncDeleteModel(items: [item])
Cmds.setPhoneCalendarSyncDelete(model) { err, reply in
    if err.code == 0 { /* reply?.errCode */ }
}
```

Kotlin
```kotlin
val model = IDOPhoneCalendarSyncDeleteModel(
    items = listOf(IDOPhoneCalendarDeleteItemModel(eventId = "evt_001", calendarId = "cal_work", startTime = 1719000000)),
)
Cmds.setPhoneCalendarSyncDelete(model).send { rs ->
    if (rs.error.code == 0) { /* rs.res?.errCode */ }
}
```
