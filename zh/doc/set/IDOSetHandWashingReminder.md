# 设置洗手提醒
* [IDOHandWashingReminderParamModel](../model/IDOHandWashingReminderParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setHandWashReminder

### 示例

Swift
```swift
let param = IDOHandWashingReminderParamModel(...)

Cmds.setHandWashingReminder(param).send { rs in
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
val param = IDOHandWashingReminderParamModel(...)

Cmds.setHandWashingReminder(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
