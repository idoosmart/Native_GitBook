# 获取压力值
* [IDOStressValModel](../model/IDOStressValModel.md)

功能表：setSetStressCalibration

### 示例

Swift
```swift
Cmds.getStressVal().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOStressValModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getStressVal().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOStressValModel
    }else {
        // 失败
    }
}
```
