# Set heart rate interval
* [IDOHeartRateIntervalModel](../model/IDOHeartRateIntervalModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

Function table: syncHeartRate

### Example 

Swift
 ```swift
let param = IDOHeartRateIntervalModel(...)

Cmds.setHeartRateInterval(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOCmdSetResponseModel
 }else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDOHeartRateIntervalModel(...)

Cmds.setHeartRateInterval(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOCmdSetResponseModel
 }else {
 // Failure
 }
}
```
