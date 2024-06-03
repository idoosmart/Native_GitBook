# Set schedule reminder
* [IDOSchedulerReminderParamModel](../model/IDOSchedulerReminderParamModel.md)
* [IDOSchedulerReminderModel](../model/IDOSchedulerReminderModel.md)

Function table: setScheduleReminder

### Example 

Swift
 ```swift
let param = IDOSchedulerReminderParamModel(...)

Cmds.setSchedulerReminder(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOSchedulerReminderModel
 }else {
 // failed
 }
}
 ```

Kotlin
```kotlin
val param = IDOSchedulerReminderParamModel(...)

Cmds.setSchedulerReminder(param).send {
 
 if (it.error.code == 0) {
 // Success
 // it.res is IDOSchedulerReminderModel
 }else {
 // Failure
 }
}
```
