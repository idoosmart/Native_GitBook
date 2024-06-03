# Set up the notification center
* [IDOSetNoticeStatusModel](../model/IDOSetNoticeStatusModel.md)
* [IDONotificationCenterModel](../model/IDONotificationCenterModel.md)

Function table: reminderAncs

### Example

Swift
 ```swift
let param = IDOSetNoticeStatusModel(...)

Cmds.setNoticeStatus(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDONotificationCenterModel
 }else {
 // failed
 }
}
 ```

Kotlin
```kotlin
val param = IDOSetNoticeStatusModel(...)

Cmds.setNoticeStatus(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDONotificationCenterModel
 }else {
 // Failure
 }
}
```
