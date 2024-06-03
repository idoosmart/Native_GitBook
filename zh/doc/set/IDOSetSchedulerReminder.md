# 设置日程提醒
* [IDOSchedulerReminderParamModel](../model/IDOSchedulerReminderParamModel.md)
* [IDOSchedulerReminderModel](../model/IDOSchedulerReminderModel.md)

功能表：setScheduleReminder

### 示例

Swift
```swift
let param = IDOSchedulerReminderParamModel(...)

Cmds.setSchedulerReminder(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOSchedulerReminderModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOSchedulerReminderParamModel(...)

Cmds.setSchedulerReminder(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOSchedulerReminderModel
    }else {
        // 失败
    }
}
```
