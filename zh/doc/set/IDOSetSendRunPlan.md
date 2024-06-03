# app下发跑步计划(运动计划)
* [IDORunPlanParamModel](../model/IDORunPlanParamModel.md)
* [IDOSendRunPlanModel](../model/IDOSendRunPlanModel.md)

功能表：setSupportSportPlan

### 示例

Swift
```swift
let param = IDORunPlanParamModel(...)

Cmds.setSendRunPlan(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOSendRunPlanModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDORunPlanParamModel(...)

Cmds.setSendRunPlan(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOSendRunPlanModel
    }else {
        // 失败
    }
}
```
