# Set heart rate mode
* [IDOHeartRateModeParamModel](../model/IDOHeartRateModeParamModel.md)
* [IDOHeartRateModeModel](../model/IDOHeartRateModeModel.md)

Function table: syncHeartRateMonitor

 ### Example 

Swift
```swift
let param = IDOHeartRateModeParamModel(...)

Cmds.setHeartRateMode(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOHeartRateModelModel
 }else {
 // Failure
 }
}
```

Kotlin
```kotlin
val param = IDOHeartRateModeParamModel(...)
 
Cmds.setHeartRateMode(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOHeartRateModeModel
 }else {
 // Failure
 }
}
```
