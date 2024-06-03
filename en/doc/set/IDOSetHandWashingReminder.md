# Set hand washing reminder
* [IDOHandWashingReminderParamModel](../model/IDOHandWashingReminderParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setHandWashReminder


### Example

Swift
 ```swift
let param = IDOHandWashingReminderParamModel(...)

Cmds.setHandWashingReminder(param).send { rs in
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
val param = IDOHandWashingReminderParamModel(...)

Cmds.setHandWashingReminder(param).send {
 
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
