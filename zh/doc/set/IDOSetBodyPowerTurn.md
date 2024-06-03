# 设置身体电量开关
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：syncV3BodyPower

### 示例

Swift
```swift
Cmds.setBodyPowerTurn().send { rs in
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
Cmds.setBodyPowerTurn().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
