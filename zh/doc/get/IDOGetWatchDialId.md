# 获取表盘id
* [IDOWatchDialIdModel](../model/IDOWatchDialIdModel.md)

功能表：无

### 示例

Swift
```swift
Cmds.getWatchDialId().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOWatchDialIdModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getWatchDialId().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOWatchDialIdModel
    }else {
        // 失败
    }
}
```
