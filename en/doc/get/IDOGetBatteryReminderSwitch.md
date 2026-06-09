# Get battery reminder switch
* [IDOBatteryReminderSwitchModel](../model/IDOBatteryReminderSwitchModel.md)

Function table: getBatteryReminderSwitch

### Example

Swift
```swift
Cmds.getBatteryReminderSwitch().send { rs in
    if case .success(let obj) = rs {
        // Success
        // obj is IDOBatteryReminderSwitchModel
    }else {
        // Failure
    }
}
```

Kotlin
```kotlin
Cmds.getBatteryReminderSwitch().send {
    if (it.error.code == 0) {
        // Success
        // it.res is IDOBatteryReminderSwitchModel
    }else {
        // Failure
    }
}
```

