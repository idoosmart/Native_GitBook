# 恢复出厂设置
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)



### 示例

Swift
```swift
Cmds.factoryReset().send { rs in
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
Cmds.factoryReset().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
