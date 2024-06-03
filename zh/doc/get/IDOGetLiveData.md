# 获得实时数据
* [IDOLiveDataModel](../model/IDOLiveDataModel.md)

功能表:getRealtimeData

### 示例

Swift
```swift
Cmds.getLiveData().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOLiveDataModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getLiveData().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOLiveDataModel
    }else {
        // 失败
    }
}
```
