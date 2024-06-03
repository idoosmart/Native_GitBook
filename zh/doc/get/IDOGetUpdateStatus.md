# 获取设备升级状态
* [IDOUpdateStatusModel](../model/IDOUpdateStatusModel.md)

功能表 : getDeviceUpdateState

### 示例

Swift
```swift
Cmds.getUpdateStatus().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOUpdateStatusModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getUpdateStatus().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOUpdateStatusModel
    }else {
        // 失败
    }
}
```
