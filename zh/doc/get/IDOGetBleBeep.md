# 获取固件本地提示音文件信息
* [IDOBleBeepModel](../model/IDOBleBeepModel.md)

功能表:getSupportGetBleBeepV3

### 示例

Swift
```swift
Cmds.getBleBeep().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOBleBeepModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getBleBeep().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOBleBeepModel
    }else {
        // 失败
    }
}
```
