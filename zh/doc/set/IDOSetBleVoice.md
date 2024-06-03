# 手机音量下发给ble
* [IDOBleVoiceParamModel](../model/IDOBleVoiceParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setSetPhoneVoice

### 示例

Swift
```swift
let param = IDOBleVoiceParamModel(...)

Cmds.setBleVoice(param).send { rs in
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
val param = IDOBleVoiceParamModel(...)

Cmds.setBleVoice(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
