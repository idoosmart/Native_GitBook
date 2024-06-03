# 血压测量
* [IDOBpMeasurementParamModel](../model/IDOBpMeasurementParamModel.md)
* [IDOBpMeasurementModel](../model/IDOBpMeasurementModel.md)

功能表：getSupportBpSetOrMeasurementV2

### 示例

Swift
```swift
let param = IDOBpMeasurementParamModel(...)

Cmds.setBpMeasurement(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOBpMeasurementModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOBpMeasurementParamModel(...)

Cmds.setBpMeasurement(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOBpMeasurementModel
    }else {
        // 失败
    }
}
```
