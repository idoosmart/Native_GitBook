# 获取血压算法三级版本号信息事件号
* [IDOBpAlgVersionModel](../model/IDOBpAlgVersionModel.md)

功能表 : setSupportV3Bp

### 示例

Swift
```swift
Cmds.getBpAlgVersion().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOBpAlgVersionModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getBpAlgVersion().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOBpAlgVersionModel
    }else {
        // 失败
    }
}
```
