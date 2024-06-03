# Set pressure calibration
* [IDOStressCalibrationParamModel](../model/IDOStressCalibrationParamModel.md)
* [IDOStressCalibrationModel](../model/IDOStressCalibrationModel.md)

Function table: setSetStressCalibration

### Example
 

Swift
 ```swift
let param = IDOStressCalibrationParamModel(...)

Cmds.setStressCalibration(param).send { rs in
 if case .success(let obj) = rs {
 // Success
 // obj is IDOStressCalibrationModel
 }else {
 // failed
 }
}
```

Kotlin
```kotlin
val param = IDOStressCalibrationParamModel(...)

Cmds.setStressCalibration(param).send {
 if (it.error.code == 0) {
 // Success
 // it.res is IDOStressCalibrationModel
 }else {
 // Failure
 }
}
```
