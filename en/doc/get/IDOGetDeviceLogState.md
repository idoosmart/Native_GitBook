# Get the log status of the device 
* [IDODeviceLogStateModel](../model/IDODeviceLogStateModel.md)

Function table: getDeviceLogState

### Example 

Swift
```swift
Cmds.getDeviceLogState().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDODeviceLogStateModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
Cmds.getDeviceLogState().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDODeviceLogStateModel
 }else {
 // Failure
 }
}
```
