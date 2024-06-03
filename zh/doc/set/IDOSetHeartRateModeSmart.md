# 智能心率模式设置
* [IDOHeartRateModeSmartParamModel](../model/IDOHeartRateModeSmartParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setSmartHeartRate



### 示例

Swift
```swift
let param = IDOHeartRateModeSmartParamModel(...)

Cmds.setHeartRateModeSmart(param).send { rs in
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
val param = IDOHeartRateModeSmartParamModel(...)

Cmds.setHeartRateModeSmart(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
