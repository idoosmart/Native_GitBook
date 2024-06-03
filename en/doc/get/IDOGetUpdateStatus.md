# Get device upgrade status 
* [IDOUpdateStatusModel](../model/IDOUpdateStatusModel.md)

Function table: getDeviceUpdateState

### Example 

Swift
```swift
Cmds.getUpdateStatus().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOUpdateStatusModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
 
Cmds.getUpdateStatus().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOUpdateStatusModel
 }else {
 // Failure
 }
}
```
