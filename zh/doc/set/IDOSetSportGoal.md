# 设置运动目标
* [IDOSportGoalParamModel](../model/IDOSportGoalParamModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：
getSupportWalkGoalSteps（二级功能表）
getStepDataTypeV2（二级功能表）

### 示例

Swift
```swift
let param = IDOSportGoalParamModel(...)

Cmds.setSportGoal(param).send { rs in
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
val param = IDOSportGoalParamModel(...)

Cmds.setSportGoal(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
