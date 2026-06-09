# 查询设备振动与铃声（V3 15.106）
* [IDODeviceVibrationRingtoneModel](../model/IDODeviceVibrationRingtoneModel.md)

功能表：`supportDeviceVibrationRingtone`

Swift
```swift
Cmds.getDeviceVibrationRingtone().send { rs in
    if case .success(let obj) = rs { /* operate==1 回复 */ }
}
```

Kotlin
```kotlin
Cmds.deviceVibrationRingtone(IDODeviceVibrationRingtoneModel(operate = 1)).send { }
```
