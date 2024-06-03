# 获取压力开关

* [IDOStressSwitchModel](../model/IDOStressSwitchModel.md)

功能表：getSupportGetPressureSwitchInfo

### 示例

Swift

```swift
Cmds.getStressSwitch().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOStressSwitchModel
    }else {
        // 失败
    }
}
```

Kotlin

```kotlin
Cmds.getStressSwitch().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOStressSwitchModel
    }else {
        // 失败
    }
}
```

