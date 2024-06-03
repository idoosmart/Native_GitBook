# 手机app通过这个命令开关，实现通知应用状态设置
* [IDONotificationStatusParamModel](../model/IDONotificationStatusParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：
setMsgAllSwitch (二级功能表)

### 示例

Swift
```swift
let param = IDONotificationStatusParamModel(...)

Cmds.setNotificationStatus(param).send { rs in
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
val param = IDONotificationStatusParamModel(...)

Cmds.setNotificationStatus(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
