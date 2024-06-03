# 设置表盘
* [IDOWatchFaceParamModel](../model/IDOWatchFaceParamModel.md)
* [IDOWatchFaceModel](../model/IDOWatchFaceModel.md)

功能表：getMultiDial

### 示例

Swift
```swift
let param = IDOWatchFaceParamModel(...)

Cmds.setWatchFaceData(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOWatchFaceModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOWatchFaceParamModel(...)

Cmds.setWatchFaceData(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOWatchFaceModel
    }else {
        // 失败
    }
}
```
