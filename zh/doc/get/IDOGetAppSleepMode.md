# 获取睡眠模式
* [IDOAppSleepModeModel](../model/IDOAppSleepModeModel.md)

功能表：supportAppSleepMode

### 示例

Swift
```swift
Cmds.getAppSleepMode().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOAppSleepModeModel
    } else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getAppSleepMode().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOAppSleepModeModel
    } else {
        // 失败
    }
}
```
