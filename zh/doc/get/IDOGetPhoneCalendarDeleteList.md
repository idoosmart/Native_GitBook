# 查询手机日历待删列表
* [IDOPhoneCalendarDeleteListModel](../model/IDOPhoneCalendarDeleteListModel.md)
* [IDOPhoneCalendarDeleteItemModel](../model/IDOPhoneCalendarDeleteItemModel.md)

功能表：`supportPhoneCalendarReminder`

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

收到设备日历待删通知（`dataType = 130`）后调用；删除完成后见 [IDOSetPhoneCalendarSyncDelete](../set/IDOSetPhoneCalendarSyncDelete.md)。
