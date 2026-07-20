# 固件上报定位信息（15.93，0x33/0x89）
* [IDOFirmwarePositionInfoModel](../model/IDOFirmwarePositionInfoModel.md)

功能表：`supportFirmwarePositionInfo`

C 层自动处理分包续传；App 监听回调即可。

Swift
```swift
// 首次获取
Cmds.firmwarePositionInfo(IDOFirmwarePositionInfoModel(operate: 1)).send { rs in
    if case .success(let obj) = rs {
        // obj.positionInfoItem
        // 收完后 operate=2 确认
        let ack = IDOFirmwarePositionInfoModel(operate: 2, timestamp: obj.positionInfoItem?.timestamp ?? 0)
        Cmds.firmwarePositionInfo(ack).send { _ in }
    }
}
```

Kotlin
```kotlin
Cmds.firmwarePositionInfo(IDOFirmwarePositionInfoModel(operate = 1)).send {
    if (it.error.code == 0) {
        val ts = it.res?.positionInfoItem?.timestamp ?: 0
        Cmds.firmwarePositionInfo(IDOFirmwarePositionInfoModel(operate = 2, timestamp = ts)).send { }
    }
}
```
