# Get phone calendar delete list
* [IDOPhoneCalendarDeleteListModel](../model/IDOPhoneCalendarDeleteListModel.md)
* [IDOPhoneCalendarDeleteItemModel](../model/IDOPhoneCalendarDeleteItemModel.md)

Function table: `supportPhoneCalendarReminder`

Swift
```swift
Cmds.getPhoneCalendarDeleteList { err, model in
    if err.code == 0 { /* model?.items */ }
}
```

Kotlin
```kotlin
Cmds.getPhoneCalendarDeleteList().send { rs ->
    if (rs.error.code == 0) { /* rs.res?.items */ }
}
```

Call after device pending-delete notification (`dataType = 130`); then see [IDOSetPhoneCalendarSyncDelete](../set/IDOSetPhoneCalendarSyncDelete.md).
