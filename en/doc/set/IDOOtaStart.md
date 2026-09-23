# Enter upgrade mode 
* [IDOCmdOTAResponseModel](../model/IDOCmdOTAResponseModel.md)



### Example 

Swift
```swift
Cmds.otaStart().send { rs in 
 if case . success(let obj) = rs {
 // Success
 // obj is IDOCmdOTAResponseModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
Cmds.otaStart( ).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdOTAResponseModel
 }else {
 // Failure
 }
}
```
