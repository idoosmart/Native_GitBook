# 血压校准
* [IDOBpCalibrationParamModel](../model/IDOBpCalibrationParamModel.md)
* [IDOBpCalibrationModel](../model/IDOBpCalibrationModel.md)

功能表：getSupportBpSetOrMeasurementV2

### 示例

Swift
```swift
let param = IDOBpCalibrationParamModel(...)

Cmds.setBpCalibration(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOBpCalibrationModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOBpCalibrationParamModel(...)

Cmds.setBpCalibration(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOBpCalibrationModel
    }else {
        // 失败
    }
}
```
