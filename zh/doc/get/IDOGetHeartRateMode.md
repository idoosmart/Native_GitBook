# 获取心率监测模式
* [IDOHeartRateModeModel](../model/IDOHeartRateModeModel.md)

功能表 : getHeartRateModeV2

### 示例

Swift
```swift
Cmds.getHeartRateMode().send { rs in
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
Cmds.getHeartRateMode().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOHeartRateModeModel
    }else {
        // 失败
    }
}
```
