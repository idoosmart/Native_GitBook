# 血压校准控制
* [IDOBpCalControlModel](../model/IDOBpCalControlModel.md)

功能表：setSupportV3Bp

### 示例

Swift
```swift
Cmds.setBpCalControlV3().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOBpCalControlModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.setBpCalControlV3().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOBpCalControlModel
    }else {
        // 失败
    }
}
```
