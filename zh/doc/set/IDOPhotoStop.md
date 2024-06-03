# 结束拍照 (app -> ble)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)



### 示例

Swift
```swift
Cmds.photoStop().send { rs in
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
Cmds.photoStop().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
