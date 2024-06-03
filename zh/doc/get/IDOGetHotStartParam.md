# ~~获取热启动参数~~
* [IDOHotStartParamModel](../model/IDOHotStartParamModel.md)

功能表：无

接口已废弃

### 示例

Swift
```swift
Cmds.getHotStartParam().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOHotStartParamModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getHotStartParam().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOHotStartParamModel
    }else {
        // 失败
    }
}
```
