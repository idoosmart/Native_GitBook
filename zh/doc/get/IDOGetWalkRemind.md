# 获取走动提醒
* [IDOWalkRemindModel](../model/IDOWalkRemindModel.md)

功能表 : getWalkReminderV3 

setWalkReminderAddNotify （二级功能表）

getSupportSetGetNoReminderOnWalkReminderV2（二级功能表）

### 示例

Swift
```swift
Cmds.getWalkRemind().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOWalkRemindModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getWalkRemind().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOWalkRemindModel
    }else {
        // 失败
    }
}
```
