# 设置通知中心
* [IDOSetNoticeStatusModel](../model/IDOSetNoticeStatusModel.md)
* [IDONotificationCenterModel](../model/IDONotificationCenterModel.md)

功能表：reminderAncs

### 示例

Swift
```swift
let param = IDOSetNoticeStatusModel(...)

Cmds.setNoticeStatus(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDONotificationCenterModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOSetNoticeStatusModel(...)

Cmds.setNoticeStatus(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDONotificationCenterModel
    }else {
        // 失败
    }
}
```
