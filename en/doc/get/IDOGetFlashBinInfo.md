# Get font information
* [IDOFlashBinInfoModel](../model/IDOFlashBinInfoModel.md)

Function table: getFlashLog

### Example

Swift
```swift
Cmds.getFlashBinInfo( ).send { rs in 
 if case .success(let obj) = rs {
 // Success 
 // obj is IDOFlashBinInfoModel
 }else {
 // Failure 
 }
}
```

Kotlin
```kotlin
 
Cmds.getFlashBinInfo().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOFlashBinInfoModel
 }else {
 // Failure
 }
}
```
