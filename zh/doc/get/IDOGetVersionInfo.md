# 获取版本信息
* [IDOVersionInfoModel](../model/IDOVersionInfoModel.md)

功能表:getVersionInfo

### 示例

Swift
```swift
Cmds.getVersionInfo().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOVersionInfoModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getVersionInfo().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOVersionInfoModel
    }else {
        // 失败
    }
}
```
