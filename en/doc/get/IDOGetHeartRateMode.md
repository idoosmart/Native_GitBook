# Get heart rate monitoring mode 
* [IDOHeartRateModeModel](../model/IDOHeartRateModeModel.md) 

Function table: getHeartRateModeV2

### Example 

Swift
```swift
Cmds.getHeartRateMode().send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOHeartRateModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
 
Cmds.getHeartRateMode().send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOHeartRateModeModel
 }else {
 // Failure
 }
}
```
