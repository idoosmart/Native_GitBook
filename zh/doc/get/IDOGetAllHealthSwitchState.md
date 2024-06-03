# 获取所有的健康监测开关
* [IDOAllHealthSwitchStateModel](../model/IDOAllHealthSwitchStateModel.md)

功能表：getHealthSwitchStateSupportV3

### 示例

Swift
```swift
Cmds.getAllHealthSwitchState().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOAllHealthSwitchStateModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getAllHealthSwitchState().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOAllHealthSwitchStateModel
    }else {
        // 失败
    }
}
```
