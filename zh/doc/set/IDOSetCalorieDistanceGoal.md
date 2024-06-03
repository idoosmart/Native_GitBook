# 设置卡路里和距离目标(设置日常三环)
* [IDOMainSportGoalModel](../model/IDOMainSportGoalModel.md)
* [IDOCmdSetResponseModel](../model/IDOCmdSetResponseModel.md)

功能表：setCalorieGoal

### 示例

Swift
```swift
let param = IDOMainSportGoalModel(...)

Cmds.setCalorieDistanceGoal(param).send { rs in
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
val param = IDOMainSportGoalModel(...)

Cmds.setCalorieDistanceGoal(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOCmdSetResponseModel
    }else {
        // 失败
    }
}
```
