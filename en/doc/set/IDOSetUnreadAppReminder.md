# Unread message red dot prompt switch
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setSetUnreadAppReminder

### Example

Swift
```swift
 
Cmds.setUnreadAppReminder().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```

Kotlin
``` kotlin 
Cmds.setUnreadAppReminder().send {
 if (it.error.code == 0) {
 // Success 
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure 
 }
}
```
