# 获取设备的日志状态
* [IDODeviceLogStateModel](../model/IDODeviceLogStateModel.md)

功能表 : getDeviceLogState

### 示例

Swift
```swift
Cmds.getDeviceLogState().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDODeviceLogStateModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getDeviceLogState().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDODeviceLogStateModel
    }else {
        // 失败
    }
}
```
