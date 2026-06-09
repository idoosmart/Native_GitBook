# 设置表盘
* [IDOWatchDialParamModel](../model/IDOWatchDialParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：WatchDial

### 示例

Swift
```swift
let param = IDOWatchDialParamModel(...)

Cmds.setWatchDial(param).send { rs in
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
val param = IDOWatchDialParamModel(...)

Cmds.setWatchDial(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
