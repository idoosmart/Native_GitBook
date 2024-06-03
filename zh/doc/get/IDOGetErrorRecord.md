# 获取错误记录
* [IDOErrorRecordModel](../model/IDOErrorRecordModel.md)

功能表:getFlashLog

### 示例

Swift
```swift
Cmds.getErrorRecord().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOErrorRecordModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getErrorRecord().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOErrorRecordModel
    }else {
        // 失败
    }
}
```
