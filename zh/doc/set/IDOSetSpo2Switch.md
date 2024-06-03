# 设置血氧开关
* [IDOSpo2SwitchParamModel](../model/IDOSpo2SwitchParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setSpo2Data

### 示例

Swift
```swift
let param = IDOSpo2SwitchParamModel(...)

Cmds.setSpo2Switch(param).send { rs in
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
val param = IDOSpo2SwitchParamModel(...)

Cmds.setSpo2Switch(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
