# 设置天气开关
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setSetV3Weather

### 示例

Swift
```swift
Cmds.setWeatherSwitch().send { rs in
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
Cmds.setWeatherSwitch().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
