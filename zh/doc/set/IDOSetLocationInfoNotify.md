# 位置信息通知（SET:0x05/0x07）
* [IDOLocationInfoNotifyModel](../model/IDOLocationInfoNotifyModel.md)

功能表：`supportFirmwarePositionInfo`

Swift
```swift
Cmds.setLocationInfoNotify(IDOLocationInfoNotifyModel(status: 1)).send { rs in
    if case .success = rs { /* ok */ }
}
```

Kotlin
```kotlin
Cmds.setLocationInfoNotify(IDOLocationInfoNotifyModel(status = 1)).send {
    if (it.error.code == 0) { /* ok */ }
}
```
