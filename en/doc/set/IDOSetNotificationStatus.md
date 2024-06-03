# The mobile app uses this command switch to implement notification application status settings 
* [IDONotificationStatusParamModel](../model/IDONotificationStatusParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: 
setMsgAll Switch (Secondary menu) 

### Example 

Swift
```swift
let param = IDONotificationStatusParamModel(...)

Cmds.setNotificationStatus(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
val param = IDONotificationStatus ParamModel(...)
 
Cmds.setNotificationStatus(param).send {
 if (it.error.code == 0) {
 // Success 
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure 
 }
}
`` `
