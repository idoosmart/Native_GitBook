# 设置心率模式
* [IDOHeartRateModeParamModel](../model/IDOHeartRateModeParamModel.md)
* [IDOHeartRateModeModel](../model/IDOHeartRateModeModel.md)

功能表：syncHeartRateMonitor

### 示例

Swift
```swift
let param = IDOHeartRateModeParamModel(...)

Cmds.setHeartRateMode(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOHeartRateModeModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOHeartRateModeParamModel(...)

Cmds.setHeartRateMode(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOHeartRateModeModel
    }else {
        // 失败
    }
}
```
