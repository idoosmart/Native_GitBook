# V3设置心率模式
* [IDOHeartModeParamModel](../model/IDOHeartModeParamModel.md)
* [IDOHeartModeModel](../model/IDOHeartModeModel.md)

功能表：syncHeartRateMonitor

### 示例

Swift
```swift
let param = IDOHeartModeParamModel(...)

Cmds.setHeartMode(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOHeartModeModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOHeartModeParamModel(...)

Cmds.setHeartMode(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOHeartModeModel
    }else {
        // 失败
    }
}
```
