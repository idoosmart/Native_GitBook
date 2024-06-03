# 设置压力开关
* [IDOStressSwitchParamModel](../model/IDOStressSwitchParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setPressureData 

### 示例

Swift
```swift
let param = IDOStressSwitchParamModel(...)

Cmds.setStressSwitch(param).send { rs in
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
val param = IDOStressSwitchParamModel(...)

Cmds.setStressSwitch(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
