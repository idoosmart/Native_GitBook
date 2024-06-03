# 设置固件来电快捷回复开关
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setSupportSetCallQuickReplyOnOff

### 示例

Swift
```swift
Cmds.setCallQuickReplyOnOff().send { rs in
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
Cmds.setCallQuickReplyOnOff().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
