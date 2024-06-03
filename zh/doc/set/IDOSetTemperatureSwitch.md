# 设置夜间体温开关
* [IDOTemperatureSwitchParamModel](../model/IDOTemperatureSwitchParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setTemperatureSwitchSupport

### 示例

Swift
```swift
let param = IDOTemperatureSwitchParamModel(...)

Cmds.setTemperatureSwitch(param).send { rs in
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
val param = IDOTemperatureSwitchParamModel(...)

Cmds.setTemperatureSwitch(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
