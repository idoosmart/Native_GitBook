# 获取gps状态
* [IDOGpsStatusModel](../model/IDOGpsStatusModel.md)

功能表:getSupportUpdateGps

### 示例

Swift
```swift
Cmds.getGpsStatus().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOGpsStatusModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getGpsStatus().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOGpsStatusModel
    }else {
        // 失败
    }
}
```
