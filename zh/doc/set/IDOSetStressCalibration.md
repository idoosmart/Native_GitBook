# 设置压力校准
* [IDOStressCalibrationParamModel](../model/IDOStressCalibrationParamModel.md)
* [IDOStressCalibrationModel](../model/IDOStressCalibrationModel.md)

功能表：setSetStressCalibration

### 示例

Swift
```swift
let param = IDOStressCalibrationParamModel(...)

Cmds.setStressCalibration(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOStressCalibrationModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOStressCalibrationParamModel(...)

Cmds.setStressCalibration(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOStressCalibrationModel
    }else {
        // 失败
    }
}
```
