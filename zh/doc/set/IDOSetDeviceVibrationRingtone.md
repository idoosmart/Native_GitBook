# 设置设备振动与铃声（V3 15.106）
* [IDODeviceVibrationRingtoneModel](../model/IDODeviceVibrationRingtoneModel.md)

功能表：`supportDeviceVibrationRingtone` 及子项 `supportVibrationSetting` 等

Swift
```swift
let model = IDODeviceVibrationRingtoneModel(operate: 2, type: 3, vibrationIntensity: 2, alarmVolume: 5)
Cmds.setDeviceVibrationRingtone(model).send { rs in
    if case .success(let obj) = rs {
        // obj.retCode == 0
    }
}
```

Kotlin
```kotlin
val model = IDODeviceVibrationRingtoneModel(operate = 2, type = 3, vibrationIntensity = 2, alarmVolume = 5)
Cmds.deviceVibrationRingtone(model).send { }
```
