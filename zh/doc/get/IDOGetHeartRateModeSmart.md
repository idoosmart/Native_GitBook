# 获取智能心率模式

* [IDOHeartRateModeSmartModel](../model/IDOHeartRateModeSmartModel.md)

功能表 : getSupportGetSmartHeartRate

### 示例

Swift

```swift
Cmds.getHeartRateModeSmart().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOHeartRateModeSmartModel
    }else {
        // 失败
    }
}
```

Kotlin

```kotlin
Cmds.getHeartRateModeSmart().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOHeartRateModeSmartModel
    }else {
        // 失败
    }
}
```

