# 音乐开关
* [IDOMusicOnOffParamModel](../model/IDOMusicOnOffParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setBleControlMusic

### 示例

Swift
```swift
let param = IDOMusicOnOffParamModel(...)

Cmds.setMusicOnOff(param).send { rs in
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
val param = IDOMusicOnOffParamModel(...)

Cmds.setMusicOnOff(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
