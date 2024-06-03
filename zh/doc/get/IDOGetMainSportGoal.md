# 获取设置的卡路里/距离/中高运动时长 主界面
* [IDOMainSportGoalModel](../model/IDOMainSportGoalModel.md)

功能表 : getSupportGetMainSportGoalV3 

setCalorieGoal (二级功能表)，

exMain3DistanceGoal (二级功能表)，

setMidHighTimeGoal (二级功能表)，

getSupportSetGetTimeGoalTypeV2 (二级功能表)

### 示例

Swift
```swift
Cmds.getMainSportGoal().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOMainSportGoalModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getMainSportGoal().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOMainSportGoalModel
    }else {
        // 失败
    }
}
```
