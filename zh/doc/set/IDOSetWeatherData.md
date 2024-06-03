# 设置天气数据
* [IDOWeatherDataParamModel](../model/IDOWeatherDataParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：supportSetWeatherDataV2

### 示例

Swift
```swift
let param = IDOWeatherDataParamModel(...)

Cmds.setWeatherData(param).send { rs in
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
val param = IDOWeatherDataParamModel(...)

Cmds.setWeatherData(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
