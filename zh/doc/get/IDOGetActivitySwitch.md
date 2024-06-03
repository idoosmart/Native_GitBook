# 运动模式自动识别开关获取
* [IDOActivitySwitchModel](../model/IDOActivitySwitchModel.md)

功能表 : getActivitySwitch

### 示例

Swift
```swift
Cmds.getActivitySwitch().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOActivitySwitchModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getActivitySwitch().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOActivitySwitchModel
    }else {
        // 失败
    }
}
```
