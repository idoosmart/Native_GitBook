# 获取表盘列表 v3
* [IDOWatchListModel](../model/IDOWatchListModel.md)

功能表：getNewWatchList == true 使用该接口，否则使用[获取表盘列表 v2](IDOGetWatchListV2.md)

### 示例

Swift
```swift
Cmds.getWatchListV3().send { rs in
    if case .success(let obj) = rs {
        // 成功
        // obj is IDOWatchListModel
    }else {
        // 失败
    }
}
```

Kotlin
```kotlin
Cmds.getWatchListV3().send {
    if (it.error.code == 0) {
        // 成功
        // it.res is IDOWatchListModel
    }else {
        // 失败
    }
}
```
