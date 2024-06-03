# Get walking reminder
* [IDOWalkRemindModel](../model/IDOWalkRemindModel.md)

Function table: getWalkReminderV3 

setWalkReminderAddNotify (secondary menu)

getSupportSetGetNoReminderOnWalkReminderV2 ( Secondary menu)

### Example

Swift
```swift
Cmds.getWalkRemind().send { rs in
 if case .success(let obj) = rs {
 // success
 // obj is IDOWalkRemindModel
 }else {
 // failure
 } 
}
```

Kotlin
```kotlin
Cmds.getWalkRemind().send {
 if (it.error.code == 0) {
 // Success 
 // it.res is IDOWalkRemindModel
 } else {
 // failed
 }
}
```
