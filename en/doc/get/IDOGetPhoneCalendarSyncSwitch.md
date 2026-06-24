# Query phone calendar sync switch
* [IDOPhoneCalendarSyncSwitchModel](../model/IDOPhoneCalendarSyncSwitchModel.md)

Function table: `supportPhoneCalendarReminder`

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
