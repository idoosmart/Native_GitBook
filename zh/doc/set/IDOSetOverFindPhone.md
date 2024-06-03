# 设置停止寻找手机
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setOverFindPhone

### 示例

Swift
```swift
Cmds.setOverFindPhone().send { rs in
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
Cmds.setOverFindPhone().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```