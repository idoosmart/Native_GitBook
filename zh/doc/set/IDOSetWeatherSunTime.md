# 设置日出日落时间
* [IDOWeatherSunTimeParamModel](../model/IDOWeatherSunTimeParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setWeatherSunTime

### 示例

Swift
```swift
let param = IDOWeatherSunTimeParamModel(...)

Cmds.setWeatherSunTime(param).send { rs in
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
val param = IDOWeatherSunTimeParamModel(...)

Cmds.setWeatherSunTime(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
