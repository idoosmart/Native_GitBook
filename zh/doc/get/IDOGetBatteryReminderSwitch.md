# 设备电量提醒开关获取
* [IDOBatteryReminderSwitchModel](../model/IDOBatteryReminderSwitchModel.md)

功能表 : getBatteryReminderSwitch

### 示例

Swift
```swift
Cmds.getBatteryReminderSwitch().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOBatteryReminderSwitchModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getBatteryReminderSwitch().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOBatteryReminderSwitchModel
    }else {
        // 失败
    }
}
```

