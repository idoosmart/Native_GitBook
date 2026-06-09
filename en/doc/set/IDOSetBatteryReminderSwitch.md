# Set battery reminder switch
* [IDOBatteryReminderSwitchParamModel](../model/IDOBatteryReminderSwitchParamModel.md)
* [IDOBatteryReminderSwitchReplyModel](../model/IDOBatteryReminderSwitchReplyModel.md)

Function table: setBatteryReminderSwitch

### Example

Swift
```swift
let param = IDOBatteryReminderSwitchParamModel(lowBatteryOnOff: 1)

Cmds.setBatteryReminderSwitch(param).send { rs in
    if case .success(let obj) = rs {
        // Success
        // obj is IDOBatteryReminderSwitchReplyModel
    }else {
        // Failure
    }
}
```

Kotlin
```kotlin
val param = IDOBatteryReminderSwitchParamModel(lowBatteryOnOff = 1)

Cmds.setBatteryReminderSwitch(param).send {
    if (it.error.code == 0) {
        // Success
        // it.res is IDOBatteryReminderSwitchReplyModel
    }else {
        // Failure
    }
}
```

