# 设置运动模式选择
* [IDOSportModeSelectParamModel](../model/IDOSportModeSelectParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：syncTimeLine

### 示例

Swift
```swift
let param = IDOSportModeSelectParamModel(...)

Cmds.setSportModeSelect(param).send { rs in
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
val param = IDOSportModeSelectParamModel(...)

Cmds.setSportModeSelect(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
