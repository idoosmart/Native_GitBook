# 设置防丢
* [IDOLostFindParamModel](../model/IDOLostFindParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：supportSetAntilost

### 示例

Swift
```swift
let param = IDOLostFindParamModel(...)

Cmds.setLostFind(param).send { rs in
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
val param = IDOLostFindParamModel(...)

Cmds.setLostFind(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
