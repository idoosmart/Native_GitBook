# 同步常用联系人
* [IDOSyncContactParamModel](../model/IDOSyncContactParamModel.md)
* [IDOSyncContactModel](../model/IDOSyncContactModel.md)

功能表：setSyncContact、reminderCallContact

### 示例

Swift
```swift
let param = IDOSyncContactParamModel(...)

Cmds.setSyncContact(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOSyncContactModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOSyncContactParamModel(...)

Cmds.setSyncContact(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOSyncContactModel
    }else {
        // 失败
    }
}
```
