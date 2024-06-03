# Set left and right hands 
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)



### Example 

Swift
```swift
Cmds.setHand().send { rs in
 if case .success (let obj) = rs {
 // Success
 // obj is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
Cmds.setHand( ).send { 
 if (it.error.code == 0) {
 // Success 
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure 
 }
}
```
