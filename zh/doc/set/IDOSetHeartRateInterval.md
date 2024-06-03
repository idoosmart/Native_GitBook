# 设置心率区间
* [IDOHeartRateIntervalModel](../model/IDOHeartRateIntervalModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：syncHeartRate

### 示例

Swift
```swift
let param = IDOHeartRateIntervalModel(...)

Cmds.setHeartRateInterval(param).send { rs in
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
val param = IDOHeartRateIntervalModel(...)

Cmds.setHeartRateInterval(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
