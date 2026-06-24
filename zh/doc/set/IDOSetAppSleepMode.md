# 设置睡眠模式
* [IDOAppSleepModeParamModel](../model/IDOAppSleepModeParamModel.md)
* [IDOAppSleepModeReplyModel](../model/IDOAppSleepModeReplyModel.md)

功能表：supportAppSleepMode

### 示例

Swift
```swift
let param = IDOAppSleepModeParamModel(sleepModeSwitch: 1)

Cmds.setAppSleepMode(param).send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOAppSleepModeReplyModel
    } else {
        // 失败
    }
}
```

Kotlin
```kotlin
val param = IDOAppSleepModeParamModel(sleepModeSwitch = 1)

Cmds.setAppSleepMode(param).send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOAppSleepModeReplyModel
    } else {
        // 失败
    }
}
```
