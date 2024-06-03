# 设置天气城市名称
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setWeatherCity

### 示例

Swift
```swift
Cmds.setWeatherCityName().send { rs in
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
Cmds.setWeatherCityName().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
