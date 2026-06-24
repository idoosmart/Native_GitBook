# Set phone calendar sync switch and permission
* [IDOPhoneCalendarSyncSetModel](../model/IDOPhoneCalendarSyncSetModel.md)
* [IDOPhoneCalendarSyncSetReplyModel](../model/IDOPhoneCalendarSyncSetReplyModel.md)

Function table: `supportPhoneCalendarReminder`

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
