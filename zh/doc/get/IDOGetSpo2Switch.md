# 获取血氧开关

* [IDOSpo2SwitchModel](../model/IDOSpo2SwitchModel.md)

功能表 : getSupportGetSpo2SwitchInfo

### 示例

Swift

```swift
Cmds.getSpo2Switch().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOSpo2SwitchModel
    }else {
        // 失败
    }
}
```

Kotlin

```kotlin
Cmds.getSpo2Switch().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOSpo2SwitchModel
    }else {
        // 失败
    }
}
```

