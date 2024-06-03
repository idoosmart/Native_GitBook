# 获取通知中心开关
* [IDOSetNoticeStatusModel](../model/IDOSetNoticeStatusModel.md)

功能表 : reminderAncs

### 示例

Swift
```swift
Cmds.getNoticeStatus().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOSetNoticeStatusModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getNoticeStatus().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOSetNoticeStatusModel
    }else {
        // 失败
    }
}
```
