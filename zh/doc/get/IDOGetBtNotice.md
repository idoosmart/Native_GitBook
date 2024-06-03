# 查询bt配对开关、连接、a2dp连接、hfp连接状态(仅支持带bt蓝牙的设备)
* [IDOBtNoticeModel](../model/IDOBtNoticeModel.md)

功能表 : getBleAndBtVersion

### 示例

Swift
```swift
Cmds.getBtNotice().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOBtNoticeModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getBtNotice().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOBtNoticeModel
    }else {
        // 失败
    }
}
```
