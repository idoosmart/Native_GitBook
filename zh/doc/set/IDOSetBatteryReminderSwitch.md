# 设置设备电量提醒开关
* [IDOBatteryReminderSwitchParamModel](../model/IDOBatteryReminderSwitchParamModel.md)
* [IDOBatteryReminderSwitchReplyModel](../model/IDOBatteryReminderSwitchReplyModel.md)

功能表：setBatteryReminderSwitch

### 示例

Swift
```swift
let param = IDOBatteryReminderSwitchParamModel(lowBatteryOnOff: 1)

Cmds.setBatteryReminderSwitch(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOBatteryReminderSwitchReplyModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOBatteryReminderSwitchParamModel(lowBatteryOnOff = 1)

Cmds.setBatteryReminderSwitch(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOBatteryReminderSwitchReplyModel
    }else {
        // 失败
    }
}
```

