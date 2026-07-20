# 定位开关模式获取（GET:0x02/0x5A）
* [IDOSwitchModeModel](../model/IDOSwitchModeModel.md)

功能表：`supportFirmwarePositionInfo`

Swift
```swift
Cmds.getSwitchMode().send { rs in
    if case .success(let obj) = rs {
        // obj.switchMode  // 0 关闭 / 1 全天 / 2 定时
    }
}
```

Kotlin
```kotlin
Cmds.getSwitchMode().send {
    if (it.error.code == 0) {
        // it.res?.switchMode
    }
}
```
