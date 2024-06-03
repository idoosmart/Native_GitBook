# Start taking photos (app -> ble)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)



### Example

Swift
```swift
Cmds.photoStart( ).send { rs in
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
Cmds. photoStart().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
