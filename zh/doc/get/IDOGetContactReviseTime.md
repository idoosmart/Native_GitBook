# 获取固件本地保存联系人文件修改时间
* [IDOContactReviseTimeModel](../model/IDOContactReviseTimeModel.md)

功能表：reminderGetAllContact

### 示例

Swift
```swift
Cmds.getContactReviseTime().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOContactReviseTimeModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getContactReviseTime().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOContactReviseTimeModel
    }else {
        // 失败
    }
}
```
