# Set multiple walking reminder time points
* [IDOWalkRemindTimesParamModel](../model/IDOWalkRemindTimesParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setWalkReminderTimeGoal


### Example 

Swift
```swift
let param = IDOWalkRemindTimesParamModel(...)

Cmds.setWalkRemindTimes(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOCmdSetResponseModel
 }else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDOWalkRemindTimesParamModel(...)

Cmds.setWalkRemindTimes(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
