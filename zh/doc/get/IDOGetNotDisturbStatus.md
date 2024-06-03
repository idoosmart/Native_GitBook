# 获取勿扰模式状态
* [IDONotDisturbStatusModel](../model/IDONotDisturbStatusModel.md)

功能表 : getDoNotDisturbMain3

### 示例

Swift
```swift
Cmds.getNotDisturbStatus().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDONotDisturbStatusModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getNotDisturbStatus().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDONotDisturbStatusModel
    }else {
        // 失败
    }
}
```
