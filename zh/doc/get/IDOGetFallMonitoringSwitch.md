# 跌倒监测开关获取（GET:0x02/0x58）
* [IDOFallMonitoringSwitchModel](../model/IDOFallMonitoringSwitchModel.md)

功能表：`supportSetFallMonitoringSwitch`

Swift
```swift
Cmds.getFallMonitoringSwitch().send { rs in
    if case .success(let obj) = rs {
        // obj.fallMonitoringSwitch  // 1 开 / 0 关
    }
}
```

Kotlin
```kotlin
Cmds.getFallMonitoringSwitch().send {
    if (it.error.code == 0) {
        // it.res?.fallMonitoringSwitch
    }
}
```
