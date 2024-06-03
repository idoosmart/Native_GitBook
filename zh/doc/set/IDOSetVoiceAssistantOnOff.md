# 设置语音助手开关
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：getSupportSetVoiceAssistantStatus

### 示例

Swift
```swift
Cmds.setVoiceAssistantOnOff().send { rs in
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
Cmds.setVoiceAssistantOnOff().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
