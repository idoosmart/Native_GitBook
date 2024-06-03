# Set walking reminder
* [IDOWalkRemindModel](../model/IDOWalkRemindModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setWalkReminder

### Example
 

Swift
 ```swift
let param = IDOWalkRemindModel(...)

Cmds.setWalkRemind(param).send { rs in
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
val param = IDOWalkRemindModel(...)

Cmds.setWalkRemind(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
