# 获取用户习惯信息
* [IDOHabitInfoModel](../model/IDOHabitInfoModel.md)

功能表：getSupportSedentaryTensileHabitInfo

### 示例

Swift
```swift
Cmds.getHabitInfo().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOHabitInfoModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getHabitInfo().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOHabitInfoModel
    }else {
        // 失败
    }
}
```
