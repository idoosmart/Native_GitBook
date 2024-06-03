# 获取电池信息
* [IDOBatteryInfoModel](../model/IDOBatteryInfoModel.md)

功能表 : getBatteryInfo

### 示例

Swift
```swift
Cmds.getBatteryInfo().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOBatteryInfoModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getBatteryInfo().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOBatteryInfoModel
    }else {
        // 失败
    }
}
```
