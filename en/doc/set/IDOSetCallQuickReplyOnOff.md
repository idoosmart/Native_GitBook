# Set the firmware call quick reply switch
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setSupportSetCallQuickReplyOnOff

### Example

Swift
```swift
Cmds.setCallQuickReplyOnOff().send { rs in
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
 Cmds.setCallQuickReplyOnOff().send {
 if (it.error.code == 0) {
 // Success 
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure 
}
```