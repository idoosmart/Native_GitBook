# 设置运动模式排序
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setSportModeSort

### 示例

Swift
```swift
Cmds.setSportModeSort().send { rs in
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
Cmds.setSportModeSort().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
