# Get notification center switch 
* [IDOSetNoticeStatusModel](../model/IDOSetNoticeStatusModel.md)

Function table: reminderAncs

### Example 

Swift
```swift
Cmds.getNoticeStatus().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOSetNoticeStatusModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
 Cmds.getNoticeStatus().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOSetNoticeStatusModel
 }else {
 // Failure
 }
}
```
