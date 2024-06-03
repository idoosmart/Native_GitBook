# 设置走动提醒
* [IDOWalkRemindModel](../model/IDOWalkRemindModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setWalkReminder

### 示例

Swift
```swift
let param = IDOWalkRemindModel(...)

Cmds.setWalkRemind(param).send { rs in
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
val param = IDOWalkRemindModel(...)

Cmds.setWalkRemind(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
