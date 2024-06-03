# 设置勿扰模式
* [IDONotDisturbParamModel](../model/IDONotDisturbParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表: setDoNotDisturb 

### 示例

Swift
```swift
let param = IDONotDisturbParamModel(...)

Cmds.setNotDisturb(param).send { rs in
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
val param = IDONotDisturbParamModel(...)

Cmds.setNotDisturb(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```