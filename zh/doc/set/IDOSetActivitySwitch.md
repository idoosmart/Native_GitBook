# 设置运动模式识别开关
* [IDOActivitySwitchParamModel](../model/IDOActivitySwitchParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setActivitySwitch

### 示例

Swift
```swift
let param = IDOActivitySwitchParamModel(...)

Cmds.setActivitySwitch(param).send { rs in
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
val param = IDOActivitySwitchParamModel(...)

Cmds.setActivitySwitch(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
