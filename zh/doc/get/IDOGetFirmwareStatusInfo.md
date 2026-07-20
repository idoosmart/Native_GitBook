# 固件状态信息查询（GET:0x02/0x48）
* [IDOFirmwareStatusInfoModel](../model/IDOFirmwareStatusInfoModel.md)

功能表：`supportGetFirmwareStatusInfo`

### 示例

Swift
```swift
Cmds.getFirmwareStatusInfo().send { rs in
    if case .success(let obj) = rs {
        // obj.intelligentMode / obj.networkStatus
    }
}
```

Kotlin
```kotlin
Cmds.getFirmwareStatusInfo().send {
    if (it.error.code == 0) {
        // it.res?.intelligentMode
    }
}
```
