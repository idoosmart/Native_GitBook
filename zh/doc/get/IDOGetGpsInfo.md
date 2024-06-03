# 获取gps信息
* [IDOGpsInfoModel](../model/IDOGpsInfoModel.md)

功能表:getSupportUpdateGps

### 示例

Swift
```swift
Cmds.getGpsInfo().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOGpsInfoModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getGpsInfo().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOGpsInfoModel
    }else {
        // 失败
    }
}
```
