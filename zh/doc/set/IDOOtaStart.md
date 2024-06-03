# 进入升级模式
* [IDOCmdOTAResponseModel](../model/IDOCmdOTAResponseModel.md)



### 示例

Swift
```swift
Cmds.otaStart().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOCmdOTAResponseModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.otaStart().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdOTAResponseModel
    }else {
        // 失败
    }
}
```
