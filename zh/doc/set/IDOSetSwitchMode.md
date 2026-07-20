# 定位开关模式设置（SET:0x03/0x59）
* [IDOSwitchModeModel](../model/IDOSwitchModeModel.md)

功能表：`supportFirmwarePositionInfo`

Swift
```swift
Cmds.setSwitchMode(IDOSwitchModeModel(switchMode: 1)).send { rs in
    if case .success = rs { /* ok */ }
}
```

Kotlin
```kotlin
Cmds.setSwitchMode(IDOSwitchModeModel(switchMode = 1)).send {
    if (it.error.code == 0) { /* ok */ }
}
```
