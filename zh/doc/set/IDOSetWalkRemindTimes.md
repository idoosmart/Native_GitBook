# 设置多个走动提醒的时间点
* [IDOWalkRemindTimesParamModel](../model/IDOWalkRemindTimesParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setWalkReminderTimeGoal

### 示例

Swift
```swift
let param = IDOWalkRemindTimesParamModel(...)

Cmds.setWalkRemindTimes(param).send { rs in
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
val param = IDOWalkRemindTimesParamModel(...)

Cmds.setWalkRemindTimes(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
