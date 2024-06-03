# 下发v3世界时间
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)
* [IDOWorldTimeParamModel](../model/IDOWorldTimeParamModel.md)

功能表：setSetV3WorldTime

### 示例

Swift
```swift
let item = IDOWorldTimeParamModel(...)
Cmds.setWorldTimeV3([item]).send { rs in
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
val item = IDOWorldTimeParamModel(...)
Cmds.setWorldTimeV3(listOf(item)).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
