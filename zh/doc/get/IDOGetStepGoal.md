# 获取全天步数目标
* [IDOStepGoalModel](../model/IDOStepGoalModel.md)

功能表 : getStepDataTypeV2

### 示例

Swift
```swift
Cmds.getStepGoal().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOStepGoalModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getStepGoal().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOStepGoalModel
    }else {
        // 失败
    }
}
```
