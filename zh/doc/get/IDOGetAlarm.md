# app获取ble的闹钟
* [IDOAlarmModel](../model/IDOAlarmItem.md)

功能表：syncV3SyncAlarm

### 示例

Swift
```swift
Cmds.getAlarm().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOAlarmModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getAlarm().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOAlarmModel
    }else {
        // 失败
    }
}
```