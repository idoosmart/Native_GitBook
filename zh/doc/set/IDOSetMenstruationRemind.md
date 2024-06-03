# 设置经期提醒
* [IDOMenstruationRemindParamModel](../model/IDOMenstruationRemindParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setMenstruation 

### 示例

Swift
```swift
let param = IDOMenstruationRemindParamModel(...)

Cmds.setMenstruationRemind(param).send { rs in
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
val param = IDOMenstruationRemindParamModel(...)

Cmds.setMenstruationRemind(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
