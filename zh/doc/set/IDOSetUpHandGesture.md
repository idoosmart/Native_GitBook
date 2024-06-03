# 设置抬手亮屏
* [IDOUpHandGestureParamModel](../model/IDOUpHandGestureParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：getUpHandGesture

### 示例

Swift
```swift
let param = IDOUpHandGestureParamModel(...)

Cmds.setUpHandGesture(param).send { rs in
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
val param = IDOUpHandGestureParamModel(...)

Cmds.setUpHandGesture(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
