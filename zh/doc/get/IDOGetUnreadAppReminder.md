# 获取红点提醒开关
* [IDOCmdGetResponseModel](../model/IDOCmdGetResponseModel.md)

功能表: 无

### 示例

Swift
```swift
Cmds.getUnreadAppReminder().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOCmdGetResponseModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getUnreadAppReminder().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdGetResponseModel
    }else {
        // 失败
    }
}
```
