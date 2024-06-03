# 健身指导
* [IDOFitnessGuidanceParamModel](../model/IDOFitnessGuidanceParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setSetFitnessGuidance

### 示例

Swift
```swift
let param = IDOFitnessGuidanceParamModel(...)

Cmds.setFitnessGuidance(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOFitnessGuidanceParamModel(...)

Cmds.setFitnessGuidance(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
