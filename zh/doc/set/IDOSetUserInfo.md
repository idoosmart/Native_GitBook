# 设置用户信息
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)
* [IDOUserInfoPramModel]()



### 示例

Swift
```swift
let param = IDOUserInfoPramModel(...)
Cmds.setUserInfo(param).send { rs in
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
Cmds.setWorldTimeV3().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
