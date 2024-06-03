# Get battery information 
* [IDOBatteryInfoModel](../model/IDOBatteryInfoModel.md)

Function table: getBatteryInfo

### Example 

Swift
```swift
Cmds.getBatteryInfo().send {rs in 
 if case .success(let obj) = rs {
 // Success
 // obj is IDOBatteryInfoModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
 
Cmds.getBatteryInfo().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOBatteryInfoModel
 }else {
 // Failure
 }
}
```
