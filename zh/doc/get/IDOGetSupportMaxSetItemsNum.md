# 获取固件支持的详情最大设置数量
* [IDOSupportMaxSetItemsNumModel](../model/IDOSupportMaxSetItemsNumModel.md)

功能表 : getSetMaxItemsNum

### 示例

Swift
```swift
Cmds.getSupportMaxSetItemsNum().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOSupportMaxSetItemsNumModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getSupportMaxSetItemsNum().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOSupportMaxSetItemsNumModel
    }else {
        // 失败
    }
}
```
