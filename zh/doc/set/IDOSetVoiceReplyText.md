# 语音回复文本
* [IDOVoiceReplyParamModel](../model/IDOVoiceReplyParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：getSportsTypeV3

### 示例

Swift
```swift
let param = IDOVoiceReplyParamModel(...)

Cmds.setVoiceReplyText(param).send { rs in
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
val param = IDOVoiceReplyParamModel(...)

Cmds.setVoiceReplyText(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
