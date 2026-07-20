# 跌倒监测开关设置（SET:0x03/0x58）
* [IDOFallMonitoringSwitchModel](../model/IDOFallMonitoringSwitchModel.md)

功能表：`supportSetFallMonitoringSwitch`

Swift
```swift
Cmds.setFallMonitoringSwitch(IDOFallMonitoringSwitchModel(fallMonitoringSwitch: 1)).send { rs in
    if case .success = rs { /* ok */ }
}
```

Kotlin
```kotlin
Cmds.setFallMonitoringSwitch(IDOFallMonitoringSwitchModel(fallMonitoringSwitch = 1)).send {
    if (it.error.code == 0) { /* ok */ }
}
```
