# Blood pressure measurement
* [IDOBpMeasurementParamModel](../model/IDOBpMeasurementParamModel.md)
* [IDOBpMeasurementModel](../model/IDOBpMeasurementModel.md)

Function table: getSupportBpSetOrMeasurementV2

 ### Example 

Swift
```swift
let param = IDOBpMeasurementParamModel(...)

Cmds.setBpMeasurement(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOBpMeasurementModel
 } else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDOBpMeasurementParamModel(...)

Cmds.setBpMeasurement(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOBpMeasurementModel
 }else {
 // Failure
 }
}
```
