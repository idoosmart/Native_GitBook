# Set menstruation reminder
* [IDOMenstruationRemindParamModel](../model/IDOMenstruationRemindParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setMenstruation 

## # Example 

Swift
 ```swift
let param = IDOMenstruationRemindParamModel(...)

Cmds.setMenstruationRemind(param).send { rs in
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
val param = IDOMenstruationRemindParamModel(...)

Cmds.setMenstruationRemind(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
