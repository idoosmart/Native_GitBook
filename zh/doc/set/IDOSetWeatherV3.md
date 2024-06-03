# 下发v3天气数据
* [IDOWeatherV3ParamModel](../model/IDOWeatherV3ParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setSetV3Weather

### 示例

Swift
```swift
let param = IDOWeatherV3ParamModel(...)

Cmds.setWeatherV3(param).send { rs in
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
val param = IDOWeatherV3ParamModel(...)

Cmds.setWeatherV3(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
