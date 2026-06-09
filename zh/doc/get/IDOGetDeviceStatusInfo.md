# 获取设备状态（GET:0x02/0x49）
* [IDODeviceStatusInfoModel](../model/IDODeviceStatusInfoModel.md)

功能表：`supportGetDeviceStatus`、`supportGetDeviceSportStatus`

### 示例

Swift
```swift
Cmds.getDeviceStatusInfo(getType: 1).send { rs in
    if case .success(let obj) = rs {
        // obj.sportStartType 等
    }
}
```

Kotlin
```kotlin
Cmds.getDeviceStatusInfo(1).send {
    if (it.error.code == 0) {
        // it.res?.sportStartType
    }
}
```
