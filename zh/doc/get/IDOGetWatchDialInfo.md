# 获取屏幕信息
* [IDOWatchDialInfoModel](../model/IDOWatchDialInfoModel.md)

功能表：无

### 示例

Swift
```swift
Cmds.getWatchDialInfo().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOWatchDialInfoModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getWatchDialInfo().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOWatchDialInfoModel
    }else {
        // 失败
    }
}
```
