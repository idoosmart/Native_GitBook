# 获取固件的歌曲名和文件夹
* [IDOMusicInfoModel](../model/IDOMusicInfoModel.md)

功能表：getSupportV3BleMusic 
getSupportGetBleMusicInfoVerV3 (二级功能表)

### 示例

Swift
```swift
Cmds.getBleMusicInfo().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOMusicInfoModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getBleMusicInfo().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOMusicInfoModel
    }else {
        // 失败
    }
}
```
