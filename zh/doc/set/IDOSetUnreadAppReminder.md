# 未读信息红点提示开关
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setSetUnreadAppReminder

### 示例

Swift
```swift
Cmds.setUnreadAppReminder().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.setUnreadAppReminder().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
