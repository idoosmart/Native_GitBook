# Set Find Phone 
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md) 

Function table: getFindPhone

### Example 

Swift
```swift
Cmds.setFin dPhone().send { rs in 
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
Cmds.setFindPhone().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
