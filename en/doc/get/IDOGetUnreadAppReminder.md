# Get the red dot reminder switch 
* [IDOCmdGetResponseModel](../model/IDOCmdGetResponseModel.md) 

Function table: None 

### Example 

Swift
```swift
Cmds.getUnreadAppRe minder().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOCmdGetResponseModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin 
Cmds.getUnreadAppReminder().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdGetResponseModel
 }else {
 // Failure
 }
}
```
