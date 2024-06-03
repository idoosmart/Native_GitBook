# app设置ble的闹钟
* [IDOAlarmModel](../model/IDOAlarmItem.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：syncV3SyncAlarm

### 示例

Swift
```swift
let param = IDOAlarmModel(...)

Cmds.setAlarm(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOAlarmModel(...)

Cmds.setAlarm(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
