# Blood Pressure Calibration
* [IDOBpCalibrationParamModel](../model/IDOBpCalibrationParamModel.md)
* [IDOBpCalibrationModel](../model/IDOBpCalibrationModel.md)

Function table: getSupportBpSetOrMeasurementV2

### Example 

Swift
```swift
let param = IDOBpCalibrationParamModel(...)

Cmds.setBpCalibration(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOBpCalibrationModel
 } else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDOBpCalibrationParamModel(...)

Cmds.setBpCalibration(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOBpCalibrationModel
 }else {
 // Failure
 }
}
```
