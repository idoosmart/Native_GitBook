# Set the body power switch
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: syncV3BodyPower

### Example

Swift
```swift
Cmd s.setBodyPowerTurn().send { rs in
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
Cmds. setBodyPowerTurn().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
