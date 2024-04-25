# Set the respiration rate switch
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: setRespirationRate

### Example

Swift
```swift
Cmds.set RRespiRateTurn().send { rs in
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
Cmds. setRRespiRateTurn().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
