# Control finding device start
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)



### Example 

Swift
```swift
Cmds.findDeviceStart().send { rs in
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
Cmds .findDeviceStart().send {
 if (it.error.code == 0) {
   // Success
   // it.res is IDOCmdSetResponseModel
 }else {
   // Failure
 }
}
```
