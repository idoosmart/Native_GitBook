# 获取spp mtu长度

* [IDOUnitModel](../model/IDOUnitModel.md)

功能表：getSupportGetUnit

### 示例

Swift

```swift
Cmds.getUnit().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOUnitModel
    }else {
        // 失败
    }
}
```

Kotlin

```kotlin
Cmds.getUnit().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOUnitModel?
    }else {
        // 失败
    }
}
```

